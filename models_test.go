package gofixtures_test

import (
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func connectDB() (db *gorm.DB) {
	var err error
	db, err = gorm.Open(postgres.Open("user=gofixtures password=123 dbname=gofixtures_dev sslmode=disable host=localhost port=9432"), &gorm.Config{})
	if err != nil {
		panic(err)
	}

	db.Logger = db.Logger.LogMode(logger.Info)
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
	IconFlagID uint
	Weight     string
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
