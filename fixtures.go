package gofixtures

import (
	"reflect"

	"github.com/jinzhu/gorm"
)

type Context interface {
	Put(db *gorm.DB, truncate bool)
}

type FieldWithQuery interface {
	FieldToQuery(fieldName string, query interface{}) FieldWithQuery
	FieldToValue(fieldName string, value interface{}) FieldWithQuery
	FieldsToRandomData(fieldNames ...string) FieldWithQuery
}

type dataContext struct {
	lists []interface{}
}

func (mc *dataContext) Put(db *gorm.DB, truncate bool) {
	for _, l := range mc.lists {
		if c, ok := l.(Context); ok {
			c.Put(db, truncate)
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
					if truncate {
						err := db.DropTableIfExists(obj).Error
						if err != nil {
							panic(err)
						}
					}
					err := db.AutoMigrate(obj).Error
					if err != nil {
						panic(err)
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

func Data(lists ...interface{}) (c Context) {
	c = &dataContext{lists: lists}
	return
}

type updatesContext struct {
	sourceQuery  interface{}
	updatesQuery FieldWithQuery
}

func Updates(sourceQuery interface{}, updatesQuery FieldWithQuery) (c Context) {
	c = &updatesContext{sourceQuery: sourceQuery, updatesQuery: updatesQuery}
	return
}

func (uc *updatesContext) Put(db *gorm.DB, truncate bool) {
	// db.Where(uc.sourceQuery).UpdateColumns()
	return
}

type listedFieldToQuery struct {
	field2Values     []field2Value
	field2Queries    []field2Query
	randomDataFields []string
}

type field2Value struct {
	fieldName string
	value     interface{}
}

type field2Query struct {
	fieldName string
	query     interface{}
}

func (lfq *listedFieldToQuery) FieldToQuery(fieldName string, query interface{}) FieldWithQuery {
	lfq.field2Queries = append(lfq.field2Queries, field2Query{fieldName, query})
	return lfq
}

func (lfq *listedFieldToQuery) FieldToValue(fieldName string, value interface{}) FieldWithQuery {
	lfq.field2Values = append(lfq.field2Values, field2Value{fieldName, value})
	return lfq
}

func (lfq *listedFieldToQuery) FieldsToRandomData(fieldNames ...string) FieldWithQuery {
	lfq.randomDataFields = append(lfq.randomDataFields, fieldNames...)
	return lfq
}

func FieldToQuery(fieldName string, query interface{}) (fwq FieldWithQuery) {
	fwq = &listedFieldToQuery{}
	return
}
