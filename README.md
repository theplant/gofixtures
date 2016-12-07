

gofixtures is a package for creating fixture data for tests. It has to be used with <a href="https://github.com/jinzhu/gorm">https://github.com/jinzhu/gorm</a>.
You can simply setup a group of tables data by using Go syntax, and reuse those data in other test cases with it's simple dependency management.




* [Data](#data)




## Data
``` go
func Data(lists ...interface{}) (c *dataContext)
```

Use Data method to setup fixtures data
```go
	db := connectDB()
	
	var applicationBootData = gofixtures.Data(
	    []Gender{
	        {Model: gorm.Model{ID: 100}, Slug: "men", Name: "Men"},
	        {Model: gorm.Model{ID: 200}, Slug: "women", Name: "Women"},
	    },
	    []Category{
	        {Slug: "shirts", Name: "Shirts", FullName: "T-Shirts"},
	    },
	)
	
	var dataForShowProduct = gofixtures.Data(
	    applicationBootData,
	    []Gender{
	        {Slug: "kids", Name: "Kids"},
	    },
	    []Product{
	        {Code: "AAA", Name: "Product 1", EnglishName: "Product English Name 1", GenderID: 1},
	    },
	)
	
	var dataForSearchProduct = gofixtures.Data(
	    applicationBootData,
	    []Product{
	        {Code: "CCC", Name: "Product C", EnglishName: "Product English Name C", GenderID: 100},
	        {Code: "DDD", Name: "Product C", EnglishName: "Product English Name C", GenderID: 100},
	    },
	)
	
	// Before you test show product
	dataForShowProduct.TruncatePut(db)
	
	// Before you test search product, the database will only contains applicationBootData, and dataForSearchProduct
	// The data inside dataForShowProduct won't exists.
	dataForSearchProduct.TruncatePut(db)
	//Output:
```




