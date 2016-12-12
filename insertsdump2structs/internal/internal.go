package internal

import (
	"bufio"
	"fmt"
	"io"

	"strings"

	"github.com/xwb1989/sqlparser"
)

func Sqls(r io.Reader) (stmts []sqlparser.Statement, err error) {
	s := bufio.NewScanner(r)
	s.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
		// fmt.Println("Split data: ", len(data))
		inQuote := false
		inLineComment := false
		inBlockComment := false
		for i := 0; i < len(data); i++ {
			if data[i] == '\'' {
				if inQuote {
					inQuote = false
				} else {
					inQuote = true
				}
			}

			if len(data) > i+2 {
				if string(data[i:i+3]) == "\n--" || (i == 0 && string(data[i:i+2]) == "--") {
					inLineComment = true
				}
			}

			if inLineComment && data[i] == '\n' {
				inLineComment = false
				advance = i + 1
				return
			}

			if len(data) > i+2 {
				if string(data[i:i+3]) == "\n/*" || (i == 0 && string(data[i:i+2]) == "/*") {
					inBlockComment = true
				}
			}

			if inBlockComment && (string(data[i:i+4]) == "*/;\n" || string(data[i:i+4]) == "*/\n") {
				inBlockComment = false
				advance = i + 4
				return
			}

			if data[i] == '\n' && i > 0 && !inQuote {

				if data[i-1] == ';' {
					advance = i + 1
					token = data[:i-1]
					return
				}
			}

		}

		return
	})
	for s.Scan() {
		sql := s.Text()
		if strings.Index(strings.ToUpper(sql), "INSERT INTO") != 0 {
			continue
		}

		fmt.Println("======!!!!!!")
		fmt.Println(s.Text())
		var stmt sqlparser.Statement
		stmt, err = sqlparser.Parse(sql)
		if err != nil {
			return
		}

		insert := stmt.(*sqlparser.Insert)
		fmt.Println("table_name: ", string(insert.Table.Name))
		for _, c := range insert.Columns {

			fmt.Println("column: ", c)
		}

		stmts = append(stmts, stmt)
	}
	return

}
