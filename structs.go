/*

gofixtures is a package for creating fixture data for tests. It has to be used with https://github.com/jinzhu/gorm.
You can simply setup a group of tables data by using Go syntax, and reuse those data in other test cases with it's simple dependency management.

*/
package gofixtures

import (
	"fmt"
	"reflect"

	"github.com/jinzhu/gorm"
)

type dataContext struct {
	lists []interface{}
}

func (mc *dataContext) TruncatePut(db *gorm.DB) {
	mc.truncatePutOnce(db, make(map[string]bool))
}

type firstTimeTruncate interface {
	truncatePutOnce(db *gorm.DB, truncatedTables map[string]bool)
}

func (mc *dataContext) truncatePutOnce(db *gorm.DB, truncatedTables map[string]bool) {
	for _, l := range mc.lists {
		if c, ok := l.(firstTimeTruncate); ok {
			c.truncatePutOnce(db, truncatedTables)
			continue
		}

		v := reflect.ValueOf(l)
		if v.Kind() == reflect.Slice {
			for i := 0; i < v.Len(); i++ {
				val := v.Index(i)
				if val.Kind() != reflect.Ptr {
					val = val.Addr()
				}
				obj := val.Interface()
				// log.Printf("obj: %#+v\n", obj)
				if i == 0 {
					emptyObj := reflect.New(val.Type()).Interface()
					scope := db.NewScope(emptyObj)
					tableName := scope.TableName()
					quotedTableName := scope.QuotedTableName()
					if !truncatedTables[tableName] {
						err := db.AutoMigrate(emptyObj).Error
						if err != nil {
							panic(err)
						}
						err = db.Exec(fmt.Sprintf("TRUNCATE TABLE %s", quotedTableName)).Error
						if err != nil {
							panic(err)
						}
						truncatedTables[tableName] = true
					}
				}

				err := db.Save(obj).Error
				if err != nil {
					panic(err)
				}
			}
		}
	}
	return
}

func Data(lists ...interface{}) (c *dataContext) {
	c = &dataContext{lists: lists}
	return
}
