package gofixtures

import "github.com/jinzhu/gorm"
import "strings"

type sqlsContext struct {
	sqls           []string
	truncateTables []string
}

func (ic *sqlsContext) truncatePutOnce(db *gorm.DB, truncatedTables map[string]bool) {
	truncateTablesIfNotYet(db, ic.truncateTables, truncatedTables)
	for _, sql := range ic.sqls {
		err := db.Exec(sql).Error
		if err != nil {
			panic(err)
		}
	}
}

func Sql(sqls string, truncateTables []string) (c *sqlsContext) {
	c = &sqlsContext{
		sqls:           splitSqls(strings.NewReader(sqls)),
		truncateTables: truncateTables,
	}
	return
}
