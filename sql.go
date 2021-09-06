package gofixtures

import (
	"database/sql"
	"strings"
)

type sqlsContext struct {
	sqls           []string
	truncateTables []string
}

func (ic *sqlsContext) truncatePutOnce(db *sql.DB, truncatedTables map[string]bool) {
	truncateTablesIfNotYet(db, ic.truncateTables, truncatedTables)
	for _, sql := range ic.sqls {
		_, err := db.Exec(sql)
		if err != nil {
			panic(err)
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
