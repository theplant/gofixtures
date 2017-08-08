package gofixtures

import (
	"bufio"
	"io"
	"strings"
)

func splitSqls(r io.Reader) (sqls []string) {
	s := bufio.NewScanner(r)
	s.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
		// fmt.Printf("data left = %q\n\n\n", data)
		inQuote := false
		inLineComment := false
		inBlockComment := false
		for i := 0; i < len(data); i++ {
			// fmt.Print(i, ",")
			if len(data) > i+2 {
				if string(data[i:i+3]) == "\n--" || (i == 0 && string(data[i:i+2]) == "--") {
					inLineComment = true
				}
			}

			if inLineComment {
				if len(data) > i+1 && data[i+1] == '\n' {
					inLineComment = false
					advance = i + 1
					token = []byte{}
					// fmt.Printf("skipping inline comment: %q\n", data[:i+1])
					return
				} else {
					continue
				}
			}

			if len(data) > i+2 {
				if string(data[i:i+3]) == "\n/*" || (i == 0 && string(data[i:i+2]) == "/*") {
					inBlockComment = true
				}
			}

			if inBlockComment {
				if string(data[i:i+4]) == "*/;\n" || string(data[i:i+4]) == "*/\n" {
					inBlockComment = false
					advance = i + 4
					// fmt.Printf("skipping block comment: %q\n", data[:i+4])
					token = []byte{}
					return
				} else {
					continue
				}
			}

			if data[i] == '\'' {
				if inQuote {
					inQuote = false
				} else {
					inQuote = true
				}
			}

			if data[i] == ';' && !inQuote {
				advance = i + 1
				token = data[:i]
				// fmt.Printf("found token: %q\n", token)
				return
			}

			if atEOF && i+1 == len(data) {
				token = data[:i]
				advance = i + 1
				// fmt.Printf("found token last: %q\n", token)
				return
			}
		}

		return
	})
	for s.Scan() {
		sql := strings.TrimSpace(s.Text())
		// fmt.Println("token!!!! =", string(sql))
		if len(sql) == 0 {
			continue
		}
		sqls = append(sqls, sql)
	}
	return
}
