DROP TABLE IF EXISTS `categories`

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_categories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8

LOCK TABLES `categories` WRITE

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `deleted_at`, `code`, `name`, `full_name`, `slug`, `category_id`) VALUES (1,'2016-12-09 10:15:29','2016-12-09 10:15:29',NULL,'t-shirts','Shirts','T-Shirts','shirts',0)

UNLOCK TABLES

DROP TABLE IF EXISTS `genders`

CREATE TABLE `genders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_genders_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8

LOCK TABLES `genders` WRITE

INSERT INTO `genders` (`id`, `created_at`, `updated_at`, `deleted_at`, `slug`, `name`) VALUES (100,'2016-12-09 10:15:29','2016-12-09 10:15:29',NULL,'men','Men'),(200,'2016-12-09 10:15:29','2016-12-09 10:15:29',NULL,'women','Women')

UNLOCK TABLES

DROP TABLE IF EXISTS `product_categories`

CREATE TABLE `product_categories` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

LOCK TABLES `product_categories` WRITE

UNLOCK TABLES

DROP TABLE IF EXISTS `products`

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `gender_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `season` varchar(20) DEFAULT NULL,
  `description` text,
  `material_description` text,
  `made_country` varchar(40) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_products_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8

LOCK TABLES `products` WRITE

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `deleted_at`, `code`, `gender_id`, `name`, `english_name`, `season`, `description`, `material_description`, `made_country`, `weight`) VALUES (1,'2016-12-09 10:15:29','2016-12-09 10:15:29',NULL,'CCC',100,'Product C','Product English Name C','','','','',''),(2,'2016-12-09 10:15:29','2016-12-09 10:15:29',NULL,'DDD',100,'Product D','Product English Name D','','','','','')

UNLOCK TABLES