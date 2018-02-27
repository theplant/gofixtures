package gofixtures

import "strings"

func mergeInsertValues(sqls []string) (outs []string) {

	lastInsertKey := ""
	lastInsertSQL := ""
	for _, sql := range sqls {
		// log.Printf("sql: %#+v\n", sql)
		upsql := strings.ToUpper(sql)
		// table name contains VALUES
		valuesIndex := strings.Index(upsql, " VALUES")
		// ++ let valuesIndex point to V
		valuesIndex++

		if strings.Index(upsql, "INSERT INTO") >= 0 && valuesIndex > 0 {
			key := strings.TrimSpace(sql[0 : valuesIndex+6])
			insertValues := strings.TrimSpace(sql[valuesIndex+6 : len(sql)])

			if lastInsertKey == key {
				lastInsertSQL = lastInsertSQL + ",\n" + insertValues
				continue
			}
			// log.Printf("lastInsertKey: %#+v\n", lastInsertKey)
			// log.Printf("key: %#+v\n", key)
			// log.Printf("lastInsertSQL: %#+v\n", lastInsertSQL)
			if len(lastInsertKey) == 0 || lastInsertKey != key {
				if len(lastInsertSQL) > 0 {
					outs = append(outs, lastInsertSQL)
				}
				lastInsertKey = key
				lastInsertSQL = key + "\n" + insertValues
				continue
			}

		}

		if len(lastInsertSQL) > 0 {
			outs = append(outs, lastInsertSQL)
			lastInsertKey = ""
			lastInsertSQL = ""
		}

		outs = append(outs, sql)
	}

	if len(lastInsertSQL) > 0 {
		outs = append(outs, lastInsertSQL)
	}
	return
}
