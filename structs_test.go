package gofixtures_test

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
	"github.com/theplant/gofixtures"
)

// Use Data method to setup fixtures data
func ExampleData_1setup() {
	db := connectDB()

	var applicationBootData = gofixtures.Data(
		[]Gender{
			{Model: gorm.Model{ID: 100}, Slug: "men", Name: "Men"},
			{Model: gorm.Model{ID: 200}, Slug: "women", Name: "Women"},
		},
		[]Category{
			{Slug: "shirts", Code: "t-shirts", Name: "Shirts", FullName: "T-Shirts"},
		},
	)

	var dataForShowProduct = gofixtures.Data(
		applicationBootData,
		[]Gender{
			{Slug: "kids", Name: "Kids"},
		},
		[]Product{
			{Code: "AAA", Name: "Product A", EnglishName: "Product English Name A", GenderID: 1},
		},
	)

	var dataForSearchProduct = gofixtures.Data(
		applicationBootData,
		[]Product{
			{Code: "CCC", Name: "Product C", EnglishName: "Product English Name C", GenderID: 100},
			{Code: "DDD", Name: "Product D", EnglishName: "Product English Name D", GenderID: 100},
		},
	)

	// Before you test show product
	dataForShowProduct.TruncatePut(db)

	// Before you test search product, the database will only contains applicationBootData, and dataForSearchProduct
	// The data inside dataForShowProduct won't exists.
	dataForSearchProduct.TruncatePut(db)
	//Output:
}
