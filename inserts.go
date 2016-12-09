package gofixtures

import (
	"log"

	"github.com/jinzhu/gorm"
	"github.com/jmoiron/sqlx"
)

type insertsContext struct {
	insertSqls string
}

func (ic *insertsContext) truncatePutOnce(db *gorm.DB, truncatedTables map[string]bool) {

	dbx, err := sqlx.Connect("mysql", "root@/gofixtures?charset=utf8&parseTime=True&loc=Local")
	if err != nil {
		log.Fatalln(err)
	}

	dbx.MustExec(ic.insertSqls)
	// err := db.Exec(ic.insertSqls).Error
	if err != nil {
		panic(err)
	}
}

func tableNameFromInsert(sql string) (tableName string) {
	return
}

func Inserts(sqls string) (c *insertsContext) {
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
