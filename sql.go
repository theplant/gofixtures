package gofixtures

import (
	"database/sql"
	"fmt"
	"strings"
)

type sqlsContext struct {
	sqls           []string
	truncateTables []string
}

func isPostgres(db *sql.DB) bool {
	var version string
	err := db.QueryRow(`select version()`).Scan(&version)
	if err != nil {
		panic(err)
	}
	if strings.Contains(version, "PostgreSQL") {
		return true
	}
	return false
}

func (ic *sqlsContext) truncatePutOnce(db *sql.DB, truncatedTables map[string]bool) {
	truncateTablesIfNotYet(db, ic.truncateTables, truncatedTables)
	for _, sql := range ic.sqls {
		_, err := db.Exec(sql)
		if err != nil {
			panic(err)
		}
	}
	if isPostgres(db) {
		for _, t := range ic.truncateTables {
			db.Exec(fmt.Sprintf(`SELECT setval('%s_id_seq', (SELECT max(id) FROM %s))`, t, t))
		}
	}
}

func Sql(sqls string, truncateTables []string) (c *sqlsContext) {
	c = &sqlsContext{
		sqls:           mergeInsertValues(splitSqls(strings.NewReader(sqls))),
		truncateTables: truncateTables,
	}
	return
}
