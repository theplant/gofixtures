package gofixtures_test

import "github.com/theplant/gofixtures"

func ExampleInserts_2main() {
	db := connectDB()

	var d = gofixtures.Data(
		gofixtures.Inserts(data),
	)

	d.TruncatePut(db)
	//Output:

}
