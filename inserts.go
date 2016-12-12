package gofixtures

import (
	"fmt"

	"github.com/jinzhu/gorm"
	"github.com/xwb1989/sqlparser"
)

type insertsContext struct {
	insertSqls string
}

func (ic *insertsContext) truncatePutOnce(db *gorm.DB, truncatedTables map[string]bool) {

	err := db.Exec(ic.insertSqls).Error
	if err != nil {
		panic(err)
	}
}

func tableNameFromInsert(sql string) (tableName string) {
	return
}

func Inserts(sqls string) (c *insertsContext) {
	stmt, err := sqlparser.Parse(sqls)
	if err != nil {
		panic(err)
	}
	fmt.Println(stmt)
	// insertSqls := []string{}

	// buf := bufio.NewReader(sqls)
	// var err error
	// var line []byte
	// var isPrefix bool

	// for {
	// 	line, isPrefix, err = buf.ReadLine()

	// 	if err == io.EOF {
	// 		break
	// 	}

	// 	if err != nil {
	// 		panic(err)
	// 	}
	// 	for isPrefix {
	// 		var newline []byte
	// 		newline, isPrefix, err = buf.ReadLine()
	// 		if err != nil {
	// 			panic(err)
	// 		}
	// 		line = append(line, newline...)
	// 	}

	// 	strline := string(line)
	// 	if len(strings.TrimSpace(strline)) == 0 {
	// 		continue
	// 	}
	// 	if strings.Index("--", strings.TrimSpace(strline)) == 0 {
	// 		continue
	// 	}

	// 	insertSqls = append(insertSqls, strline)
	// }

	c = &insertsContext{insertSqls: sqls}
	return
}
