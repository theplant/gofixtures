# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.16)
# Database: analogue_life
# Generation Time: 2016-11-06 14:23:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table product_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `product_id` int(10) unsigned DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `product_language_code` varchar(255) DEFAULT NULL,
  `category_language_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;

INSERT INTO `product_categories` (`product_id`, `category_id`, `product_language_code`, `category_language_code`)
VALUES
	(1438,9,NULL,NULL),
	(1438,5,NULL,NULL);

/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `publish_status` tinyint(1) DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `image` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_images_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;

INSERT INTO `product_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `publish_status`, `product_id`, `width`, `height`, `image`)
VALUES
	(2974,'2016-08-06 02:13:53','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-1-A.jpg\",\"Url\":\"/system/product_images/2974/image/S-94-1-A.20160805185316385366837.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}'),
	(2975,'2016-08-06 02:13:56','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-2_B.jpg\",\"Url\":\"/system/product_images/2975/image/S-94-2_B.20160805185616476707684.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}'),
	(2976,'2016-08-06 02:15:19','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-1-C.jpg\",\"Url\":\"/system/product_images/2976/image/S-94-1-C.20160805181916931430381.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}'),
	(2977,'2016-08-06 02:15:22','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-1-D.jpg\",\"Url\":\"/system/product_images/2977/image/S-94-1-D.20160805182216805780646.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}'),
	(2978,'2016-08-06 02:15:25','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-1-E.jpg\",\"Url\":\"/system/product_images/2978/image/S-94-1-E.20160805182516803623858.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}'),
	(2979,'2016-08-06 02:15:28','2016-08-24 10:39:49',NULL,0,1438,1800,1800,'{\"FileName\":\"S-94-1-F.jpg\",\"Url\":\"/system/product_images/2979/image/S-94-1-F.20160805182816997328572.jpg\",\"CropOptions\":{\"slider\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}');

/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `language_code` varchar(6) NOT NULL DEFAULT '',
  `publish_status` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `artist_id` int(10) unsigned DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `manufacture` varchar(255) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT '0.0000',
  `cost_price` double DEFAULT NULL,
  `max_order_quantity` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `ordered_quantity` int(10) unsigned DEFAULT NULL,
  `packaged_height` int(11) DEFAULT NULL,
  `packaged_width` int(11) DEFAULT NULL,
  `packaged_depth` int(11) DEFAULT NULL,
  `packaged_weight` int(11) DEFAULT NULL,
  `is_consignment` tinyint(1) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL,
  `is_restockable` tinyint(1) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `icon_image` varchar(4096) DEFAULT NULL,
  `main_image` varchar(4096) DEFAULT NULL,
  `country_restriction` varchar(1024) DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT NULL,
  `recommended_product_ids` varchar(1024) DEFAULT NULL,
  `product_height` varchar(255) DEFAULT NULL,
  `product_width` varchar(255) DEFAULT NULL,
  `product_depth` varchar(255) DEFAULT NULL,
  `product_weight` varchar(255) DEFAULT NULL,
  `diameter` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `made_in_country` varchar(255) DEFAULT NULL,
  `care` varchar(255) DEFAULT NULL,
  `heat_source` varchar(255) DEFAULT NULL,
  `product_length` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_description` text,
  PRIMARY KEY (`id`,`language_code`),
  KEY `idx_products_deleted_at` (`deleted_at`),
  KEY `idx_locale_product_code_deleted_at` (`language_code`,`product_code`,`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `deleted_at`, `language_code`, `publish_status`, `position`, `brand_id`, `artist_id`, `product_code`, `name`, `description`, `manufacture`, `price`, `cost_price`, `max_order_quantity`, `quantity`, `ordered_quantity`, `packaged_height`, `packaged_width`, `packaged_depth`, `packaged_weight`, `is_consignment`, `is_unique`, `is_restockable`, `number`, `icon_image`, `main_image`, `country_restriction`, `is_hidden`, `recommended_product_ids`, `product_height`, `product_width`, `product_depth`, `product_weight`, `diameter`, `material`, `volume`, `made_in_country`, `care`, `heat_source`, `product_length`, `slug`, `meta_description`)
VALUES
	(1438,'2016-08-06 02:13:53','2016-08-24 10:39:49',NULL,'en',0,404,0,88,'Kettle S-94-1','Copper Kettle','<p>Self taught metalware artist Mizuno Masami has been producing copper wares by hand since the age of 20. He produces his pots and pans using the process of \"Raising\" that allows the shaping of hollow forms from a flat sheet of metal by repeated hammering. The technique is slow and painstaking and the creation of one pot might require tens of thousand of hammer strokes to shape and fold the metal into its final finished form.  The kettle is untinned and benefits from the disinfectant properties of copper which helps to kill microbes while giving the water a milder, improved taste. The copper will begin to transform to deeper hue with use and the passage of time. </p><p><em>Each kettle is made individually by hand so slight </em><em>imperfections are to be expected and contribute to the uniqueness of each piece. </em></p><p><br></p>','',90000.0000,0,1,0,NULL,240,270,230,0,0,1,1,'S-94-1','{\"FileName\":\"S-94-1_icn.jpg\",\"Url\":\"/system/products/1438/iconimage/S-94-1_icn.20160805185816211245719.jpg\",\"CropOptions\":{\"big\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143},\"middle\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143},\"small\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143}}}','{\"FileName\":\"S-94-1-mn.jpg\",\"Url\":\"/system/products/1438/mainimage/S-94-1-mn.20160805185916463617787.jpg\",\"CropOptions\":{\"big\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800},\"middle\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800},\"small\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}','[\"China\"]',0,'[]','24cm (with handle)','21cm','','','17cm','Copper / Brass ','','Japan','','Gas ','','masami-mizuno-kettle','Copper Kettle by Masami Mizuno '),
	(1438,'2016-08-09 01:57:03','2016-08-12 03:14:41',NULL,'ja',0,416,0,88,'Kettle S-94-1','銅のケトル','<p>美しい鎚目が目を引く水野正美さんの銅のケトル。<br>銅は熱伝導に優れており保温性も高く、また、微量金属作用により高い殺菌作用が期待で来ます。銅で沸かしたお湯はまろやかで美味しいと言われていますが、コーヒーや紅茶などにお使いいただいても同じ様に美味しくいただけます。<br>大切にお使いいただければ20年以上使用することも可能です。自分だけの良い色に変化させながら末永くお使い下さい。<br><br>*使用する際はまわりの調理器具から油などが飛ばないよう気をつけて下さい。<br>使用後はしっかりと乾燥させて下さい。<br></p>','',90000.0000,0,1,0,NULL,240,270,230,0,0,1,1,'S-94-1','{\"FileName\":\"S-94-1_icn.jpg\",\"Url\":\"/system/products/1438/iconimage/S-94-1_icn.20160805185816211245719.jpg\",\"CropOptions\":{\"big\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143},\"middle\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143},\"small\":{\"X\":0,\"Y\":1,\"Width\":143,\"Height\":143}}}','{\"FileName\":\"S-94-1-mn.jpg\",\"Url\":\"/system/products/1438/mainimage/S-94-1-mn.20160805185916463617787.jpg\",\"CropOptions\":{\"big\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800},\"middle\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800},\"small\":{\"X\":0,\"Y\":0,\"Width\":1800,\"Height\":1800}}}','[\"China\"]',0,'[]','24cm (with handle)','21cm','','','17cm','銅／真鍮','2L','Japan','','','','masami-mizuno-kettle','名古屋で鍛金作家として20年以上活動されている水野正美さん。');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
