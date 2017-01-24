package gofixtures

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

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

func TestSplitSqlsNoSemicolon(t *testing.T) {

	r := strings.NewReader(`
INSERT INTO color_groups (id, created_at, updated_at, deleted_at, name, color) VALUES 
(3, '2016-12-08 05:47:44.712578+00', '2016-12-08 05:50:53.444824+00', NULL, '黑', '#000000'),
(2, '2016-12-08 05:42:47.762055+00', '2016-12-08 05:50:53.461951+00', NULL, '青', '#0000ff'),
(1, '2016-12-08 05:42:33.443295+00', '2016-12-08 05:50:53.468694+00', NULL, '茶', '#8b4513')

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES 
(3, '2016-11-25 07:30:19.093333+00', '2016-12-02 07:30:55.425407+00', NULL, 'ﾍﾞｰｼﾞｭ', '003', 0),
(1, '2016-11-25 07:29:53.095315+00', '2016-12-02 07:32:36.315175+00', NULL, 'ﾈｲﾋﾞｰ', '001', 0),
(4, '2016-11-27 06:45:05.98972+00', '2016-12-07 03:36:33.968816+00', NULL, 'ﾌﾞﾗｳﾝ', '004', 0),
(2, '2016-11-25 07:30:06.139782+00', '2016-12-08 06:34:15.068886+00', NULL, '赤', '002', 0)
	
	`)
	stmts := splitSqls(r)
	if len(stmts) != 1 {
		t.Errorf("%+v", stmts)
	}
}
