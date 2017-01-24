package gofixtures

import (
	"bufio"
	"io"
	"strings"
)

func splitSqls(r io.Reader) (sqls []string) {
	s := bufio.NewScanner(r)
	s.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
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

			if atEOF && i+1 == len(data) {
				token = data[:i]
				advance = i + 1
				return
			}
		}

		return
	})
	for s.Scan() {
		sql := strings.TrimSpace(s.Text())
		if len(sql) == 0 {
			continue
		}
		sqls = append(sqls, sql)
	}
	return
}
