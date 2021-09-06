/*

gofixtures is a package for creating fixture data for tests. It has to be used with https://github.com/jinzhu/gorm.
You can simply setup a group of tables data by using Go syntax, and reuse those data in other test cases with it's simple dependency management.

*/
package gofixtures

import (
	"database/sql"
	"fmt"
)

type dataContext struct {
	lists []interface{}
}

func (mc *dataContext) TruncatePut(db *sql.DB) {
	mc.truncatePutOnce(db, make(map[string]bool))
}

type firstTimeTruncate interface {
	truncatePutOnce(db *sql.DB, truncatedTables map[string]bool)
}

func truncateTablesIfNotYet(db *sql.DB, tableNames []string, truncatedTables map[string]bool) {
	for _, tableName := range tableNames {
		if truncatedTables[tableName] {
			continue
		}

		_, err := db.Exec(fmt.Sprintf("DELETE FROM %s", tableName))
		if err != nil {
			panic(err)
		}
		truncatedTables[tableName] = true
	}
}

func (mc *dataContext) truncatePutOnce(db *sql.DB, truncatedTables map[string]bool) {
	for _, l := range mc.lists {
		if c, ok := l.(firstTimeTruncate); ok {
			c.truncatePutOnce(db, truncatedTables)
			continue
		}
	}
	return
}

func Data(lists ...interface{}) (c *dataContext) {
	c = &dataContext{lists: lists}
	return
}
