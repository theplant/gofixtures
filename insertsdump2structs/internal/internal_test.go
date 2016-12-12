package internal

import (
	"fmt"
	"os"
	"testing"
)

import "path/filepath"

func TestA(t *testing.T) {
	var files = []string{"mysql_dump.sql", "pgsql_dump.sql"}
	for _, f := range files {
		in, err := os.Open(filepath.Join(os.Getenv("GOPATH"), "src/github.com/theplant/gofixtures/insertsdump2structs/internal/fixtures/", f))
		if err != nil {
			t.Error(err)
		}
		stmts, _ := Sqls(in)
		fmt.Println(stmts)
	}
}
