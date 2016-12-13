package gofixtures

import (
	"os"
	"testing"
)

import "path/filepath"

func TestSplitSqls(t *testing.T) {
	var files = []string{"mysql_dump.sql", "pgsql_dump.sql"}
	for _, f := range files {
		in, err := os.Open(filepath.Join(os.Getenv("GOPATH"), "src/github.com/theplant/gofixtures/fixtures/", f))
		if err != nil {
			t.Error(err)
		}
		stmts := splitSqls(in)
		if len(stmts) < 5 {
			t.Error(stmts)
		}
	}
}
