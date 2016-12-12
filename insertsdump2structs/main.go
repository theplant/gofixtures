package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/xwb1989/sqlparser"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
		// fmt.Println("Split data: ", string(data))
		inQuote := false
		for i := 0; i < len(data); i++ {
			if data[i] == '\'' {
				if inQuote {
					inQuote = false
				} else {
					inQuote = true
				}
			}
			if data[i] == ';' {
				advance = i + 1
				token = data[:i]
			}

		}

		return
	})
	for s.Scan() {
		sql := s.Text()
		fmt.Println("======!!!!!!")
		fmt.Println(s.Text())

		stmt, err := sqlparser.Parse(sql)
		if err != nil {
			fmt.Println(err)
		}
		fmt.Println(stmt)
	}

}
