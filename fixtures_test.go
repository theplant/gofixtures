package gofixtures

import (
	"testing"

	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

func TestFactoryData(t *testing.T) {
	db, err := gorm.Open("mysql", "root@/gofixtures?charset=utf8&parseTime=True&loc=Local")
	db.LogMode(true)
	if err != nil {
		panic(err)
	}
	defer db.Close()

	var common = Data(
		[]Gender{
			{Slug: "men", Name: "Men"},
			{Slug: "women", Name: "Women"},
		},
		[]Category{
			{Slug: "shirts", Name: "Shirts", FullName: "T-Shirts"},
		},
	)

	var queryUpdates = Updates(
		Product{Code: "AA*"},
		FieldToQuery("Gender", Gender{Slug: "men"}).
			FieldToQuery("Categories", Category{Slug: "shirts"}).
			FieldToValue("Season", "SW2016").
			FieldsToRandomData("Description", "MaterialDescription"),
	)

	var d = Data(
		common,
		[]Product{
			{Code: "AAA", Name: "Product 1", EnglishName: "Product English Name 1", GenderID: 1},
		},
		queryUpdates,
	)

	// d.Put(db)
	d.Put(db, true)
}

type Product struct {
	gorm.Model

	Code string `gorm:"size:128"`

	Gender   Gender
	GenderID uint

	Name                string `gorm:"size:255"`
	EnglishName         string `gorm:"size:255"`
	Season              string `gorm:"size:20"`
	Description         string `gorm:"type:text"`
	MaterialDescription string `gorm:"type:text"`
	MadeCountry         string `gorm:"size:40"`

	Categories []Category `gorm:"many2many:product_categories;"`

	Weight string
}

type Gender struct {
	gorm.Model

	Slug string `gorm:"size:10"`
	Name string `gorm:"size:255"`
}

type Category struct {
	gorm.Model

	Code     string `gorm:"size:20"`
	Name     string `gorm:"size:255"`
	FullName string `gorm:"size:255"`
	Slug     string `gorm:"size:50"`

	CategoryID    uint
	SubCategories []Category
}
