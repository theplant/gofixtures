package gofixtures

import (
	"testing"

	"strings"

	"github.com/theplant/testingutils"
)

func TestMergeInsertValues(t *testing.T) {
	// 	in, err := os.Open(filepath.Join(os.Getenv("GOPATH"), "src/github.com/theplant/gofixtures/fixtures/", "pgsql_dump.sql"))
	// 	if err != nil {
	// 		t.Error(err)
	// 	}
	// 	stmts := mergeInsertValues(splitSqls(in))
	// 	expected := `INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES
	// (3, '2016-11-27 06:49:13.379166+00', '2016-12-05 08:44:51.48708+00', NULL, 2, true, 4, '', NULL),
	// (4, '2016-11-27 06:49:15.146439+00', '2016-11-27 06:53:32.169786+00', '2016-11-27 06:56:12.63406+00', 2, false, 4, '', NULL),
	// (2, '2016-11-25 07:58:11.033137+00', '2016-12-08 06:37:53.706265+00', NULL, 1, true, 2, '＊モデル：身長315cm C95 W79 H93 Mサイズ着用', 3),
	// (1, '2016-11-25 07:30:21.180623+00', '2016-12-08 06:37:53.71855+00', NULL, 1, false, 3, '＊モデル：身長200cm C95 W79 H93 Mサイズ着用', 2),
	// (5, '2016-12-02 07:30:55.429398+00', '2016-12-08 06:37:53.721675+00', NULL, 1, false, 1, '＊モデル：身長200cm C95 W79 H93 Mサイズ着用', 1),
	// (6, '2016-12-07 03:34:32.46911+00', '2016-12-08 06:42:32.549347+00', NULL, 3, true, 4, '', 3),
	// (7, '2016-12-07 03:34:34.202062+00', '2016-12-07 03:34:34.202062+00', '2016-12-07 03:35:18.040148+00', 3, true, 2, '', NULL)`

	// 	if diff := testingutils.PrettyJsonDiff(expected, stmts[12]); len(diff) > 0 {
	// 		t.Error(diff)
	// 	}

	stmts := mergeInsertValues(splitSqls(strings.NewReader(`

INSERT INTO color_groups (id, created_at, updated_at, deleted_at, name, color) VALUES 
(3, '2016-12-08 05:47:44.712578+00', '2016-12-08 05:50:53.444824+00', NULL, '黑', '#000000'),
(2, '2016-12-08 05:42:47.762055+00', '2016-12-08 05:50:53.461951+00', NULL, '青', '#0000ff'),
(1, '2016-12-08 05:42:33.443295+00', '2016-12-08 05:50:53.468694+00', NULL, '茶', '#8b4513');

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES 
(3, '2016-11-25 07:30:19.093333+00', '2016-12-02 07:30:55.425407+00', NULL, 'ﾍﾞｰｼﾞｭ', '003', 0),
(1, '2016-11-25 07:29:53.095315+00', '2016-12-02 07:32:36.315175+00', NULL, 'ﾈｲﾋﾞｰ', '001', 0),
(4, '2016-11-27 06:45:05.98972+00', '2016-12-07 03:36:33.968816+00', NULL, 'ﾌﾞﾗｳﾝ', '004', 0),
(2, '2016-11-25 07:30:06.139782+00', '2016-12-08 06:34:15.068886+00', NULL, '赤', '002', 0);
   
    `)))

	expected := `INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES
(3, '2016-11-25 07:30:19.093333+00', '2016-12-02 07:30:55.425407+00', NULL, 'ﾍﾞｰｼﾞｭ', '003', 0),
(1, '2016-11-25 07:29:53.095315+00', '2016-12-02 07:32:36.315175+00', NULL, 'ﾈｲﾋﾞｰ', '001', 0),
(4, '2016-11-27 06:45:05.98972+00', '2016-12-07 03:36:33.968816+00', NULL, 'ﾌﾞﾗｳﾝ', '004', 0),
(2, '2016-11-25 07:30:06.139782+00', '2016-12-08 06:34:15.068886+00', NULL, '赤', '002', 0)`
	if diff := testingutils.PrettyJsonDiff(expected, stmts[1]); len(diff) > 0 {
		t.Error(diff)
	}

}
