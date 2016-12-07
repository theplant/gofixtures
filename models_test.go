package gofixtures_test

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

func connectDB() *gorm.DB {
	db, err := gorm.Open("mysql", "root@/gofixtures?charset=utf8&parseTime=True&loc=Local")
	db.LogMode(true)
	if err != nil {
		panic(err)
	}
	return db
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
