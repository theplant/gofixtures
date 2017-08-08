SET statement_timeout = 0

SET lock_timeout = 0

SET idle_in_transaction_session_timeout = 0

SET client_encoding = 'UTF8'

SET standard_conforming_strings = on

SET check_function_bodies = false

SET client_min_messages = warning

SET row_security = off

SET search_path = public, pg_catalog

INSERT INTO categories (id, created_at, updated_at, deleted_at, code, name, category_id, slug, full_name) VALUES (1, '2016-11-25 07:13:36.286416+00', '2016-12-02 04:23:56.813127+00', NULL, 'CL1', 'ラバーブーツ', 2, '', 'レディース ラバーブーツ')

INSERT INTO categories (id, created_at, updated_at, deleted_at, code, name, category_id, slug, full_name) VALUES (2, '2016-12-02 04:23:56.812291+00', '2016-12-07 03:34:32.460387+00', NULL, 'CL2', 'レディース シューズ', 0, 'レディース シューズ', 'レディース シューズ')

SELECT pg_catalog.setval('categories_id_seq', 2, true)

SELECT pg_catalog.setval('collections_id_seq', 1, false)

INSERT INTO color_groups (id, created_at, updated_at, deleted_at, name, color) VALUES (3, '2016-12-08 05:47:44.712578+00', '2016-12-08 05:50:53.444824+00', NULL, '黑', '#000000')

INSERT INTO color_groups (id, created_at, updated_at, deleted_at, name, color) VALUES (2, '2016-12-08 05:42:47.762055+00', '2016-12-08 05:50:53.461951+00', NULL, '青', '#0000ff')

INSERT INTO color_groups (id, created_at, updated_at, deleted_at, name, color) VALUES (1, '2016-12-08 05:42:33.443295+00', '2016-12-08 05:50:53.468694+00', NULL, '茶', '#8b4513')

SELECT pg_catalog.setval('color_groups_id_seq', 3, true)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (3, '2016-11-27 06:49:13.379166+00', '2016-12-05 08:44:51.48708+00', NULL, 2, true, 4, '', NULL)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (4, '2016-11-27 06:49:15.146439+00', '2016-11-27 06:53:32.169786+00', '2016-11-27 06:56:12.63406+00', 2, false, 4, '', NULL)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (2, '2016-11-25 07:58:11.033137+00', '2016-12-08 06:37:53.706265+00', NULL, 1, true, 2, '＊モデル：身長315cm C95 W79 H93 Mサイズ着用', 3)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (1, '2016-11-25 07:30:21.180623+00', '2016-12-08 06:37:53.71855+00', NULL, 1, false, 3, '＊モデル：身長200cm C95 W79 H93 Mサイズ着用', 2)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (5, '2016-12-02 07:30:55.429398+00', '2016-12-08 06:37:53.721675+00', NULL, 1, false, 1, '＊モデル：身長200cm C95 W79 H93 Mサイズ着用', 1)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (6, '2016-12-07 03:34:32.46911+00', '2016-12-08 06:42:32.549347+00', NULL, 3, true, 4, '', 3)

INSERT INTO color_variations (id, created_at, updated_at, deleted_at, product_id, main_color, color_id, model_description, color_group_id) VALUES (7, '2016-12-07 03:34:34.202062+00', '2016-12-07 03:34:34.202062+00', '2016-12-07 03:35:18.040148+00', 3, true, 2, '', NULL)

SELECT pg_catalog.setval('color_variations_id_seq', 7, true)

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES (3, '2016-11-25 07:30:19.093333+00', '2016-12-02 07:30:55.425407+00', NULL, 'ﾍﾞｰｼﾞｭ', '003', 0)

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES (1, '2016-11-25 07:29:53.095315+00', '2016-12-02 07:32:36.315175+00', NULL, 'ﾈｲﾋﾞｰ', '001', 0)

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES (4, '2016-11-27 06:45:05.98972+00', '2016-12-07 03:36:33.968816+00', NULL, 'ﾌﾞﾗｳﾝ', '004', 0)

INSERT INTO colors (id, created_at, updated_at, deleted_at, name, code, color_group_id) VALUES (2, '2016-11-25 07:30:06.139782+00', '2016-12-08 06:34:15.068886+00', NULL, '赤', '002', 0)

SELECT pg_catalog.setval('colors_id_seq', 4, true)

INSERT INTO features (id, created_at, updated_at, deleted_at, code, name) VALUES (2, '2016-11-25 07:15:02.330677+00', '2016-12-07 03:34:32.462172+00', NULL, 'F2', '雨や水を防ぐ')

INSERT INTO features (id, created_at, updated_at, deleted_at, code, name) VALUES (1, '2016-11-25 07:14:48.6035+00', '2016-12-07 03:34:32.463912+00', NULL, 'F1', 'GORE-TEX')

SELECT pg_catalog.setval('features_id_seq', 2, true)

INSERT INTO genders (id, created_at, updated_at, deleted_at, slug, name) VALUES (2, '2016-11-25 07:13:14.382785+00', '2016-11-25 07:13:14.382785+00', NULL, 'women', 'レディース')

INSERT INTO genders (id, created_at, updated_at, deleted_at, slug, name) VALUES (1, '2016-11-25 07:13:03.156396+00', '2016-12-07 03:34:32.457533+00', NULL, 'men', 'メンズ')

INSERT INTO genders (id, created_at, updated_at, deleted_at, slug, name) VALUES (3, '2016-12-02 04:11:18.348472+00', '2016-12-08 05:39:06.093414+00', NULL, 'kids', 'キッズ　ベビー')

SELECT pg_catalog.setval('genders_id_seq', 3, true)

INSERT INTO icon_flags (id, created_at, updated_at, deleted_at, code, name) VALUES (2, '2016-11-25 07:28:47.597155+00', '2016-12-02 04:27:23.475574+00', NULL, '002', '雑誌掲載')

INSERT INTO icon_flags (id, created_at, updated_at, deleted_at, code, name) VALUES (1, '2016-11-25 07:28:11.737913+00', '2016-12-07 03:34:32.458453+00', NULL, '001', 'WEB限定')

SELECT pg_catalog.setval('icon_flags_id_seq', 2, true)

INSERT INTO product_categories (product_id, category_id) VALUES (2, 1)

INSERT INTO product_categories (product_id, category_id) VALUES (1, 2)

INSERT INTO product_categories (product_id, category_id) VALUES (3, 2)

INSERT INTO product_features (product_id, feature_id) VALUES (1, 2)

INSERT INTO product_features (product_id, feature_id) VALUES (2, 2)

INSERT INTO product_features (product_id, feature_id) VALUES (1, 1)

INSERT INTO product_features (product_id, feature_id) VALUES (3, 2)

INSERT INTO product_features (product_id, feature_id) VALUES (3, 1)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (8, '2016-12-02 07:30:57.248336+00', '2016-12-08 06:37:55.552534+00', NULL, '', '{"FileName":"G1751-c.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-001-.20161208065316910491124.jpg","CropOptions":{"ca":{"X":949,"Y":753,"Width":191,"Height":191},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (4, '2016-12-02 04:37:58.149734+00', '2016-12-08 06:37:53.707232+00', NULL, 'fn', '{"FileName":"G1781-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-fn.20161207083216214708568.jpg","CropOptions":{"ca":{"X":673,"Y":734,"Width":209,"Height":209},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (5, '2016-12-02 04:37:59.911012+00', '2016-12-06 06:16:47.289571+00', '2016-12-06 06:17:14.83316+00', '', '{"FileName":"E253C-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-.20161206044916477231733.jpg","CropOptions":{"ca":{"X":605,"Y":722,"Width":409,"Height":409},"cs":{"X":605,"Y":722,"Width":409,"Height":409},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (7, '2016-12-02 07:30:55.430398+00', '2016-12-07 08:21:19.843727+00', '2016-12-07 08:22:01.659938+00', '', '{"FileName":"G3516-6.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-001-.20161207081716974382651.jpg","CropOptions":{"ca":{"X":1406,"Y":835,"Width":162,"Height":162},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (6, '2016-12-02 04:42:02.247762+00', '2016-12-02 04:55:47.168122+00', '2016-12-02 04:56:45.546694+00', '', '{"FileName":"3.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-.20161202040216256297373.jpg","CropOptions":{"ca":{"X":0,"Y":22,"Width":215,"Height":215},"cs":{"X":0,"Y":22,"Width":215,"Height":215},"medium":{"X":0,"Y":22,"Width":215,"Height":215},"mn":{"X":0,"Y":22,"Width":215,"Height":215},"zm":{"X":0,"Y":22,"Width":215,"Height":215}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (9, '2016-12-02 07:30:59.156501+00', '2016-12-07 08:21:17.905183+00', '2016-12-07 08:22:01.662733+00', '', '{"FileName":"F7656-a.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-001-.20161206060516863252992.jpg","CropOptions":{"ca":{"X":652,"Y":1453,"Width":284,"Height":284},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (1, '2016-11-25 07:30:21.181291+00', '2016-12-08 06:37:53.719464+00', NULL, 'fn', '{"FileName":"G0525-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-003-fn.20161206061416761473361.jpg","CropOptions":{"ca":{"X":1178,"Y":788,"Width":288,"Height":288},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 1)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (3, '2016-11-27 06:49:13.380092+00', '2016-12-05 08:44:53.54002+00', NULL, 'fn', '{"FileName":"G2423-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1405-004-fn.20161205085116564027175.jpg","CropOptions":{"ca":{"X":817,"Y":767,"Width":277,"Height":277},"cs":{"X":0,"Y":1,"Width":1999,"Height":1999},"medium":{"X":0,"Y":1,"Width":1999,"Height":1999},"mn":{"X":0,"Y":1,"Width":1999,"Height":1999},"zm":{"X":0,"Y":1,"Width":1999,"Height":1999}}}', 3)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (2, '2016-11-25 07:58:11.033633+00', '2016-12-06 06:15:51.705783+00', '2016-12-06 06:16:47.248392+00', 'fn', NULL, 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (12, '2016-12-02 07:31:04.573088+00', '2016-12-08 06:37:55.55396+00', NULL, '', '{"FileName":"E253V-b.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-001-.20161207080116872451090.jpg","CropOptions":{"ca":{"X":547,"Y":419,"Width":200,"Height":200},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (14, '2016-12-02 07:31:08.179538+00', '2016-12-08 06:37:55.555107+00', NULL, '', '{"FileName":"E2973-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407--.20161202070816183906946.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (19, '2016-12-05 04:57:51.137767+00', '2016-12-05 08:44:53.542705+00', NULL, '', '{"FileName":"E8382-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1405-004-.20161205045116143175770.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 3)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (16, '2016-12-05 04:57:45.009178+00', '2016-12-05 08:44:53.543875+00', NULL, '', '{"FileName":"19212-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1405-004-.20161205044516018516531.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 3)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (17, '2016-12-05 04:57:46.734041+00', '2016-12-05 08:44:53.544903+00', NULL, '', '{"FileName":"19250-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1405-004-.20161205044616739378207.jpg","CropOptions":{"ca":{"X":1,"Y":0,"Width":1999,"Height":1999},"cs":{"X":1,"Y":0,"Width":1999,"Height":1999},"medium":{"X":1,"Y":0,"Width":1999,"Height":1999},"mn":{"X":1,"Y":0,"Width":1999,"Height":1999},"zm":{"X":1,"Y":0,"Width":1999,"Height":1999}}}', 3)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (21, '2016-12-06 04:30:03.202619+00', '2016-12-08 06:37:53.708415+00', NULL, 'bm', '{"FileName":"G1833-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-.20161206040316209459459.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (22, '2016-12-06 04:30:05.024215+00', '2016-12-08 06:37:53.714965+00', NULL, '', '{"FileName":"G2621-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-.20161206040516031027965.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (20, '2016-12-06 04:30:01.438697+00', '2016-12-08 06:37:53.71637+00', NULL, '', '{"FileName":"G1931-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407-002-.20161206040116445219667.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 2)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (18, '2016-12-05 04:57:48.864144+00', '2016-12-05 08:44:53.541515+00', NULL, '', '{"FileName":"19655-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1405-004-.20161205044816869495550.jpg","CropOptions":{"ca":{"X":0,"Y":1,"Width":1999,"Height":1999},"cs":{"X":0,"Y":1,"Width":1999,"Height":1999},"medium":{"X":0,"Y":1,"Width":1999,"Height":1999},"mn":{"X":0,"Y":1,"Width":1999,"Height":1999},"zm":{"X":0,"Y":1,"Width":1999,"Height":1999}}}', 3)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (10, '2016-12-02 07:31:00.851341+00', '2016-12-08 06:37:55.557288+00', NULL, '', '{"FileName":"G0663-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407--.20161202070016855766903.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (23, '2016-12-07 03:34:32.470286+00', '2016-12-07 03:50:43.378+00', '2016-12-07 08:19:29.233176+00', 'fn', '{"FileName":"850467406_01.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1508-004-fn.20161207034116147745360.jpg","CropOptions":{"ca":{"X":765,"Y":257,"Width":95,"Height":95},"cs":{"X":0,"Y":0,"Width":1380,"Height":1380},"medium":{"X":0,"Y":0,"Width":1380,"Height":1380},"mn":{"X":0,"Y":0,"Width":1380,"Height":1380},"zm":{"X":0,"Y":0,"Width":1380,"Height":1380}}}', 6)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (11, '2016-12-02 07:31:02.55032+00', '2016-12-08 06:37:55.558454+00', NULL, '', '{"FileName":"E253K-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407--.20161202070216554647750.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (13, '2016-12-02 07:31:06.483615+00', '2016-12-08 06:37:55.559537+00', NULL, '', '{"FileName":"E2507-a.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407--.20161202070616488166106.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (25, '2016-12-07 08:19:31.183164+00', '2016-12-08 06:42:34.77228+00', NULL, 'fn', '{"FileName":"37066-b.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1508-004-fn.20161208063216693344912.jpg","CropOptions":{"ca":{"X":881,"Y":1022,"Width":113,"Height":113},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 6)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (26, '2016-12-07 08:19:33.137679+00', '2016-12-08 06:42:34.773849+00', NULL, 'bm', '{"FileName":"T0032-1.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1508-004-.20161207083316143169248.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 6)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (15, '2016-12-02 07:31:09.862843+00', '2016-12-08 06:37:55.556173+00', NULL, '', '{"FileName":"G1961-a.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1407--.20161202070916871337533.jpg","CropOptions":{"ca":{"X":0,"Y":0,"Width":2000,"Height":2000},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 5)

INSERT INTO product_images (id, created_at, updated_at, deleted_at, kind, image, color_variation_id) VALUES (24, '2016-12-07 08:19:29.252671+00', '2016-12-08 06:42:34.775052+00', NULL, '', '{"FileName":"37066-6.jpg","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/product_images/ZBF1508-004-.20161207082916257661804.jpg","CropOptions":{"ca":{"X":620,"Y":800,"Width":253,"Height":253},"cs":{"X":0,"Y":0,"Width":2000,"Height":2000},"medium":{"X":0,"Y":0,"Width":2000,"Height":2000},"mn":{"X":0,"Y":0,"Width":2000,"Height":2000},"zm":{"X":0,"Y":0,"Width":2000,"Height":2000}}}', 6)

SELECT pg_catalog.setval('product_images_id_seq', 26, true)

INSERT INTO product_technologies (product_id, technology_id) VALUES (1, 1)

INSERT INTO product_technologies (product_id, technology_id) VALUES (2, 1)

INSERT INTO product_technologies (product_id, technology_id) VALUES (3, 1)

INSERT INTO product_washing_instructions (product_id, washing_instruction_id) VALUES (1, 2)

INSERT INTO product_washing_instructions (product_id, washing_instruction_id) VALUES (2, 2)

INSERT INTO product_washing_instructions (product_id, washing_instruction_id) VALUES (3, 2)

INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (2, '2016-11-27 06:49:13.371488+00', '2016-12-05 08:44:51.485799+00', NULL, 'ZBF1405', 1, 'コンビネーショングローブ', '', '17SS', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">ウールの強縮絨ニット生地とニットリブ、上質で柔らかく、手袋をはめたままスマホの操作が可能な山羊革のコンビネーショングローブです。</span></p>
<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">幅広いコーディネートに合わせていただけるシンプルなデザインでありながら、手口のトリコロール配色がフランスブランドのAIGLEらしさを感じさせてくれます。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">また、保温性能を高めるため、インナーにシンサレートを使用しています。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">3Mシンサレート高機能中綿は、同じ厚みのダウンと比較すると、1.5～2倍の保温機能があり暖かいのが特徴です。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><br></p>
<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">サイズはメンズサイズのM/L展開になります。</span></p>', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">毛60%ﾚｰﾖﾝ40%</span><span style="letter-spacing: 0px;"></span></p>', 'Japan', 1, '514g　(Mサイズ)')

INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (1, '2016-11-25 07:30:21.179825+00', '2016-12-08 06:37:53.705366+00', NULL, 'ZBF1407', 1, 'GORE ウルフクリーカー', 'GORE jacket', '17SS', '<p>PERTEXの中でも軽量でストレッチ性のある3L素材を使用したフィッシュテールタイプのレインコートです。胸と背中はベンチレーションになっており蒸れを緩和します。左裾ポケットでパッカブルになり濡れたままでも収納出来ます。<span></span></p>
<p><br></p>
<p><br></p>', '<p>素材： 表,デクルーズプレインウイーブ（ナイロン100%）裏,リフレクティブプリントマイクロテックスライト（ポリエステル100%）</p>', 'China', 2, '514g　(Mサイズ)')

INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (3, '2016-12-07 03:34:32.459302+00', '2016-12-08 06:42:32.548282+00', NULL, 'ZBF1508', 1, '【オム】T-KIT MODS', 'T-KIT MODS', '15H', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">T-KITアウターはシーズンレスで着用できることを前提として軽量のGORE-TEXを採用しました。</span></p><p><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">MODSフィッシュテールコート（M-51）をデザインベースとしシルエット見直し、ポケットのデザインと仕様を防水性を高める折り閉じ型（フラップを閉じる事で口が閉じる）しました。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">また、ウエストのスピンドル出口もフラップをつけ同様の効果をねらっています。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">T-KITアウターなのでインナー装着を前提にやや大きめのサイズ感としています。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><br></p><p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">＊この商品はAIGLEオリジナルのTHERMO KIT対応のアウターです。THERMO KIT対応のインナーをジッパーで組み合わせて1枚のウェアとして着用することができます。</span></p>', '<p><span style="color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif;">表地：ナイロン100％</span></p>', 'China', 1, '500g')

SELECT pg_catalog.setval('products_id_seq', 3, true)

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (1, '2016-12-06 02:47:54.603592+00', '2016-12-06 02:47:54.603592+00', NULL, 3, '1900-01-01 00:00:00+00', 'M', '123-456-456', '田中', '太郞', 'FENG', 'JUNHUI', '123-4564', '3-45-123', 'アパート', '杉并', 'Aomori')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (2, '2016-12-06 03:14:50.15723+00', '2016-12-06 03:14:50.15723+00', NULL, 10, '1900-01-23 00:00:00+00', 'M', '123-456-788', '西瓜', '太郎', '西瓜', '太郎', '197-0804', '西瓜之家', '西瓜', '东京', 'Aomori')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (3, '2016-12-06 03:33:02.36585+00', '2016-12-06 03:33:02.36585+00', NULL, 16, '1907-01-01 00:00:00+00', 'M', '123-456-456', '吴', '峥', 'wu', 'zheng', '123-4567', 'asdfsd', 'asdf', 'sfdsdf', 'Miyagi')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (4, '2016-12-06 03:38:26.109052+00', '2016-12-06 03:38:26.109052+00', NULL, 21, '2001-05-04 00:00:00+00', 'M', '122-3343-4445', '骏达', '太郎', 'JUNDA', 'TAILANG', '699-5304', 'カキノキムラシラタニ', '1', '柿木村白谷 ', 'Hyogo')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (5, '2016-12-06 03:46:55.034954+00', '2016-12-06 03:46:55.034954+00', NULL, 22, '1900-01-01 00:00:00+00', 'M', '123-456-456', '田中', '太郞', 'FENG', 'JUNHUI', '123-4567', '3-45-123', '', '杉并', 'Aomori')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (6, '2016-12-06 03:49:59.58231+00', '2016-12-06 03:49:59.58231+00', NULL, 23, '1902-02-01 00:00:00+00', 'M', '123-123-123', '田中', '太郎', '田中', '太郎', '111-1111', '东京之家', '', '东京', 'Iwate')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (7, '2016-12-06 03:51:56.195306+00', '2016-12-06 03:51:56.195306+00', NULL, 24, '1934-04-08 00:00:00+00', 'M', '122-334-66677', 'Jhundd', 'ddr', 'jund', 'ddff', '400-0000', '点的得打', '', '男的女的', 'Yamagata')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (8, '2016-12-06 04:02:43.398293+00', '2016-12-06 04:02:43.398293+00', NULL, 25, '1994-05-05 00:00:00+00', 'F', '11111-22222-33333', '久别', '捻子', 'JIUBIE', 'NIANZI', '079-1143', '赤平 ', 'アカビラ', '赤平市', 'Hokkaido')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (9, '2016-12-06 04:04:42.070575+00', '2016-12-06 04:04:42.070575+00', NULL, 26, '1901-02-03 00:00:00+00', 'F', '123-123-123', '安达', '鮎美', 'Aida ', 'Maki', '190-0160', '1-11-11', '安达之家', '东京', 'Fukushima')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (10, '2016-12-06 05:26:44.589153+00', '2016-12-06 05:26:44.589153+00', NULL, 27, '1901-02-02 00:00:00+00', 'F', '123-123-123', '中二', '太郎', '中二', '太郎', '123-1231', '1-21-1', '', '东京', 'Aomori')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (11, '2016-12-07 05:49:58.331294+00', '2016-12-07 05:49:58.331294+00', NULL, 28, '1901-02-04 00:00:00+00', 'M', '123-123-123', '哀川', '里代', 'Aikawa', 'Riyo', '123-1231', '1-1-11', '', '村庄', 'Hokkaido')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (12, '2016-12-08 06:56:53.813804+00', '2016-12-08 06:56:53.813804+00', NULL, 29, '1900-01-02 00:00:00+00', 'M', '0000-7777-9999', 'shimamiyta', 'wataru', '島宮', '航', '181-0013', '４ー１４ー２１', 'らこすて', '三鷹市下連雀', 'Tokyo')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (13, '2016-12-08 07:22:17.828286+00', '2016-12-08 07:22:17.828286+00', NULL, 30, '1901-01-02 00:00:00+00', 'M', '1-1111-111', '中四', '田子', 'ZHOS', 'TZ', '197-0804', '1', '1', 'あきる野市秋川', 'Tokyo')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (14, '2016-12-08 08:34:18.000427+00', '2016-12-08 08:34:18.000427+00', NULL, 31, '1990-06-04 00:00:00+00', 'F', '090-6019-6786', 'Varin', 'Anatole', 'ヴァリン', 'アナトール', '151-0053', '5-24-6', '', '渋谷区代々木', 'Tokyo')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (15, '2016-12-08 09:02:21.3141+00', '2016-12-08 09:02:21.3141+00', NULL, 32, '1901-02-03 00:00:00+00', 'M', '111-1111-1111', '1', '1', '1', '1', '197-0804', '1-1-1', '1', 'あきる野市秋川', 'Hokkaido')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (16, '2016-12-08 09:20:59.52314+00', '2016-12-08 09:20:59.52314+00', NULL, 33, '1901-01-02 00:00:00+00', 'M', '11-1-1', '中山', '桑', 'zhongshan', 'yama', '197-0804', '123123', '123', 'あきる野市秋川', 'Aomori')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (17, '2016-12-08 09:23:18.454992+00', '2016-12-08 09:23:18.454992+00', NULL, 34, '1917-01-16 00:00:00+00', 'M', '1-1-1', '三四', '中田', 'sant', 'zhongt', '177-0044', '1', '1', '練馬区上石神井', 'Tokyo')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (18, '2016-12-08 09:39:52.541704+00', '2016-12-08 09:39:52.541704+00', NULL, 35, '1901-02-01 00:00:00+00', 'M', '123-1234-1234', '甜心', '太郎', 'Tt', 'Yh', '197-0804', '1', '1', 'あきる野市秋川', 'Iwate')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (19, '2016-12-08 09:49:37.316397+00', '2016-12-08 09:49:37.316397+00', NULL, 36, '1908-08-05 00:00:00+00', 'M', '123-123-123', '天天', '太郎', 'tian', 'Tai', '197-0804', '123', '1', 'あきる野市秋川', 'Saitama')

INSERT INTO profiles (id, created_at, updated_at, deleted_at, customer_id, date_of_birth, gender, phone, family_name, given_name, katakana_family_name, katakana_given_name, zipcode, address1, address2, city, prefecture) VALUES (20, '2016-12-08 09:57:54.681463+00', '2016-12-08 09:57:54.681463+00', NULL, 37, '1902-02-06 00:00:00+00', 'F', '11-1234-1234', '条例', '桑', 'zhongnian', 'sang', '197-0804', '1', '1', 'あきる野市秋川', 'Tokyo')

SELECT pg_catalog.setval('profiles_id_seq', 20, true)

INSERT INTO projects (name, db_type, db_connection_string, product_loading_logic) VALUES ('aigle', 'postgres', 'postgres://aigle:123@localhost:5433/aigle_dev?sslmode=disable', '{"product_codes_in_batch_sql":"\n\t\t\t\t\tSELECT code AS \"Code\"\n\t\t\t\t\tFROM products\n\t\t\t\t\tWHERE deleted_at IS NULL\n\t\t\t\t\tORDER BY code LIMIT :PerPage OFFSET :Offset\n\t\t\t\t","products_by_codes_steps":[{"sql":"\n\t\t\t\tSELECT\n\t\t\t\t\tcode AS \"Code\",\n\t\t\t\t\tname AS \"Name\",\n\t\t\t\t\tdescription AS \"Description\",\n\t\t\t\t\tid AS \"FilterProperties_ids\",\n\t\t\t\t\tCONCAT(code, '' '', name, '' '', english_name) AS \"Text\",\n\t\t\t\t\tgender_id AS \"FilterProperties_genders\"\n\t\t\t\tFROM products\n\t\t\t\tWHERE code IN ( :QueryProductCodes )\n\t\t\t"},{"sql":"\n\t\t\t\tSELECT\n\t\t\t\t\tproducts.code AS \"Code\",\n\t\t\t\t\tproduct_categories.category_id AS \"FilterProperties_categories\"\n\t\t\t\t\tFROM products INNER JOIN product_categories\n\t\t\t\t\t\tON products.id = product_categories.product_id\n\t\t\t\t\tWHERE code IN ( :QueryProductCodes )\n\t\t\t"},{"to_type":1,"sql":"\n\t\t\t\tSELECT\n\t\t\t\tproducts.code AS \"Code\",\n\t\t\t\tsize_variations.jan_code AS \"ArticleCode\",\n\t\t\t\tsize_variations.price AS \"Price\",\n\t\t\t\tsize_variations.discount_price AS \"SellingPrice\",\n\t\t\t\tCASE\n\t\t\t\t\tWHEN coalesce(size_variations.available_quantities, 0) \u003e 0 THEN ''true''\n\t\t\t\t\tELSE ''false''\n\t\t\t\tEND AS \"InInventory\",\n\t\t\t\tsize_variations.size_id AS \"FilterProperties_sizes\",\n\t\t\t\tcolor_variations.color_group_id AS \"FilterProperties_colors\"\n\t\t\tFROM size_variations\n\t\t\t\tINNER JOIN color_variations ON color_variations.id = size_variations.color_variation_id\n\t\t\t\tINNER JOIN products ON products.id = color_variations.product_id\n\t\t\tWHERE size_variations.deleted_at IS NULL\n\t\t\t\tAND code IN ( :QueryProductCodes )\n\t\t\t","map_to_rules":[{"field":"ImageCode","to_value_template":"{{.FilterProperties_colors}}"}]},{"to_type":2,"sql":"\n\t\t\t\t\tSELECT\n\t\t\t\t\t\tproducts.code AS \"Code\",\n\t\t\t\t\t\tcolor_variations.color_id AS \"ImageCode\",\n\t\t\t\t\t\tproduct_images.image AS \"Source\",\n\t\t\t\t\t\tproduct_images.kind AS \"Field\"\n\t\t\t\t\tFROM color_variations\n\t\t\t\t\t\tINNER JOIN products ON color_variations.product_id = product_id\n\t\t\t\t\t\tINNER JOIN product_images ON product_images.id = color_variations.id\n\t\t\t\t\tWHERE color_variations.deleted_at IS NULL\n\t\t\t\t\t\tAND product_images.deleted_at IS NULL\n\t\t\t\t\t\tAND product_images.image IS NOT NULL\n\t\t\t\t\t\tAND products.code IN ( :QueryProductCodes )\n\t\t\t\t","map_to_rules":[{"field":"Id","to_value_template":"{{.Code}}-{{.ImageCode}}-{{.Field}}"},{"field":"ImageCode","to_value_template":"{{.ImageCode}}"},{"field":"Source","decoder":2,"to_value_template":"{{.Source.Url}}"}]}]}')

SELECT pg_catalog.setval('qor_jobs_id_seq', 1, false)

SELECT pg_catalog.setval('shipping_addresses_id_seq', 1, false)

INSERT INTO size_variations (id, created_at, updated_at, deleted_at, color_variation_id, size_id, global_size, jan_code, available_quantities, minimum_inventory, size_description, online_time, offline_time, final_sale, sale_corner_only, price, discount_price) VALUES (3, '2016-11-27 06:49:15.144047+00', '2016-12-05 08:44:53.546149+00', NULL, 3, 2, '', '852067002', 10, 5, '', '0001-01-01 00:00:00+00', '0001-01-01 00:00:00+00', false, false, 9612, 9612)

INSERT INTO size_variations (id, created_at, updated_at, deleted_at, color_variation_id, size_id, global_size, jan_code, available_quantities, minimum_inventory, size_description, online_time, offline_time, final_sale, sale_corner_only, price, discount_price) VALUES (2, '2016-11-25 07:58:12.62831+00', '2016-12-08 06:37:53.717443+00', NULL, 2, 1, '', '123123123123', 10, 5, '', '0001-01-01 00:00:00+00', '0001-01-01 00:00:00+00', false, false, 74520, 74520)

INSERT INTO size_variations (id, created_at, updated_at, deleted_at, color_variation_id, size_id, global_size, jan_code, available_quantities, minimum_inventory, size_description, online_time, offline_time, final_sale, sale_corner_only, price, discount_price) VALUES (1, '2016-11-25 07:51:27.702041+00', '2016-12-08 06:37:53.72054+00', NULL, 1, 2, '', '2134234234', 10, 5, '', '0001-01-01 00:00:00+00', '0001-01-01 00:00:00+00', false, false, 74520, 74520)

INSERT INTO size_variations (id, created_at, updated_at, deleted_at, color_variation_id, size_id, global_size, jan_code, available_quantities, minimum_inventory, size_description, online_time, offline_time, final_sale, sale_corner_only, price, discount_price) VALUES (4, '2016-12-02 07:31:11.508653+00', '2016-12-08 06:37:55.560608+00', NULL, 5, 4, NULL, '', 0, 0, '', '0001-01-01 00:00:00+00', '0001-01-01 00:00:00+00', false, false, 0, 0)

INSERT INTO size_variations (id, created_at, updated_at, deleted_at, color_variation_id, size_id, global_size, jan_code, available_quantities, minimum_inventory, size_description, online_time, offline_time, final_sale, sale_corner_only, price, discount_price) VALUES (5, '2016-12-07 03:34:34.199609+00', '2016-12-08 06:42:34.776213+00', NULL, 6, 2, NULL, '00000000000123', 10, 3, '', '0001-01-01 00:00:00+00', '0001-01-01 00:00:00+00', false, false, 42120, 42120)

SELECT pg_catalog.setval('size_variations_id_seq', 5, true)

INSERT INTO sizes (id, created_at, updated_at, deleted_at, name, global_name) VALUES (1, '2016-11-25 07:14:00.698248+00', '2016-11-28 09:07:12.963681+00', NULL, 'S', '36')

INSERT INTO sizes (id, created_at, updated_at, deleted_at, name, global_name) VALUES (3, '2016-11-25 07:14:14.637494+00', '2016-11-28 09:07:27.323073+00', NULL, 'L', '42')

INSERT INTO sizes (id, created_at, updated_at, deleted_at, name, global_name) VALUES (4, '2016-11-25 07:14:22.692438+00', '2016-12-02 07:31:11.507402+00', NULL, 'XL', '44')

INSERT INTO sizes (id, created_at, updated_at, deleted_at, name, global_name) VALUES (2, '2016-11-25 07:14:07.313509+00', '2016-12-07 03:34:34.198282+00', NULL, 'M', '40')

SELECT pg_catalog.setval('sizes_id_seq', 4, true)

INSERT INTO technologies (id, created_at, updated_at, deleted_at, code, name, description, image) VALUES (1, '2016-11-25 07:17:09.27208+00', '2016-12-07 03:34:32.467405+00', NULL, 'T2', 'Made in France', '<p><span style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; white-space: pre-wrap;">Boots handmade by our master rubber craftmens in France, in Châtellerault. High quality and know-how are the core principles of Aigle, that''s why our boots have both high technicity and performance.</span><span style="letter-spacing: 0px;"></span></p>', '{"FileName":"Screen Shot 2016-11-27 at 2.22.35 PM.png","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/technologies/1/image/Screen-Shot-2016-11-27-at-2.22.35-PM.20161127060116917197000.png"}')

SELECT pg_catalog.setval('technologies_id_seq', 1, true)

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (3, '2016-12-06 02:47:54.601019+00', '2016-12-06 02:47:54.601019+00', NULL, 'junhuif@theplant.jp', '$2a$10$wassfJgMKjkSrWVWGJNgwuAiS.c3z.AgZk6O0Wi2TQJSvx1vXg402')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (10, '2016-12-06 03:14:50.154596+00', '2016-12-06 03:14:50.154596+00', NULL, 'Judy+1@theplant', '$2a$10$OG1Fa.svlQ8b/.xvBI4cj.xzdgT5AYYvcLH8wPmOKmHwbM/oSMbhO')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (16, '2016-12-06 03:33:02.362544+00', '2016-12-06 03:33:02.362544+00', NULL, 'eric@theplant.jp', '$2a$10$bMA6QCGpPsIgQ686HUL2Ke./rOYENiFvJSoHudXX1dgz9iMP3F3hK')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (21, '2016-12-06 03:38:26.106487+00', '2016-12-06 03:38:26.106487+00', NULL, 'susan+01@theplant.jp', '$2a$10$0XGxzxM/0ZbKygjXgGGORObnsXHuscIjbtA4Cn1d/ivup9D1idrgu')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (22, '2016-12-06 03:46:55.031327+00', '2016-12-06 03:46:55.031327+00', NULL, 'junhuif+1@theplant.jp', '$2a$10$5QQK.dyi21aXutIngp.gkerMmBjrX9Ruc2MJAUIlaXQzNQUY0gO72')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (23, '2016-12-06 03:49:59.579609+00', '2016-12-06 03:49:59.579609+00', NULL, 'judy+3@theplant.jp', '$2a$10$giCl6IFo8mKh2VK4VeLYMer9TFyeFdn5Nd661TndV5ENWKayDN2Wa')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (24, '2016-12-06 03:51:56.19305+00', '2016-12-06 03:51:56.19305+00', NULL, 'susan+02@theplant.jp', '$2a$10$5tkWe22VqgH5XEiC/pUKteW7fuO6n/P7ITvtDLSBsykpCBZd8Cyeq')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (25, '2016-12-06 04:02:43.395508+00', '2016-12-06 04:02:43.395508+00', NULL, 'susan+03@theplant.jp', '$2a$10$H4jzWycEHiw4Dans4lmDbO72/TVSV0Klv0FODW6uHy3IQM5OCTAtK')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (26, '2016-12-06 04:04:42.068027+00', '2016-12-06 04:04:42.068027+00', NULL, 'judy+2@theplant', '$2a$10$8iY0IXQPtyP.pJ4UHOA39eAg1OQLkjGOeR53dJrEax/SfdQ4dA44a')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (27, '2016-12-06 05:26:44.587121+00', '2016-12-06 05:26:44.587121+00', NULL, 'judy+3@theplant', '$2a$10$xG7e5JALHnRJWIRNoljhxeRbSwfePXHX2hA.i3pQykoAwXUdJzDoG')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (28, '2016-12-07 05:49:58.329081+00', '2016-12-07 05:49:58.329081+00', NULL, 'judy+1@theplant.jp', '$2a$10$vUrI0ZrC1XiOcBcdGIacQeuoNo.wHZ4.akp.ny3lLp7tT.CwU2QIG')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (29, '2016-12-08 06:56:53.810545+00', '2016-12-08 06:56:53.810545+00', NULL, 'wshimamiya@lacoste.com', '$2a$10$c8xDxwpbZDqNohRKgxU42eZtXga7DVgsIDTs5R0/ZXpL7sr.dv53m')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (30, '2016-12-08 07:22:17.825899+00', '2016-12-08 07:22:17.825899+00', NULL, 'judy+4@theplant.jp', '$2a$10$inJt2pcxxussT/dKpTRgZusUEAZe8Vudh20BAi0/e6CK/NesKM7Ia')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (31, '2016-12-08 08:34:17.99827+00', '2016-12-08 08:34:17.99827+00', NULL, 'a@theplant.jp', '$2a$10$rWXTEoIeHZ/j2ktIoXWigOL5r07ZKPf9Boy23ypfqO4kG1zeLUM9.')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (32, '2016-12-08 09:02:21.311672+00', '2016-12-08 09:02:21.311672+00', NULL, 'judy+02@theplant.jp', '$2a$10$58b.lpoGy61VIL/sZo.zbeNmg7s7DdBYTeqnebbuDKbGQKsfbonVi')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (33, '2016-12-08 09:20:59.520449+00', '2016-12-08 09:20:59.520449+00', NULL, 'judy+001@theplant.jp', '$2a$10$xI/vhRaiSVUqGFYRXru1jO0uW2fK0rLqcrySMMbvR2JKdoTWMeRZG')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (34, '2016-12-08 09:23:18.452611+00', '2016-12-08 09:23:18.452611+00', NULL, 'judy+002@theplant.jp', '$2a$10$GZDq4hfegB.BxdNvzKo5O.DS6ipNJ9Oe4XeDTLnbbrG2jPG7GX7GO')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (35, '2016-12-08 09:39:52.539061+00', '2016-12-08 09:39:52.539061+00', NULL, 'Judy+5@theplant.jp', '$2a$10$uG.qc7rRSThcg1DHdL5CNejVR7ZwHatjm9crhju0x/wBPJrANvFc.')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (36, '2016-12-08 09:49:37.31415+00', '2016-12-08 09:49:37.31415+00', NULL, 'judy+5@theplant.jp', '$2a$10$5qMP5t/975p/E5XY8QaocOR1.7js.gBJqm59f6E84iR6n6Pro4emm')

INSERT INTO users (id, created_at, updated_at, deleted_at, email, password) VALUES (37, '2016-12-08 09:57:54.679192+00', '2016-12-08 09:57:54.679192+00', NULL, 'judy+6@theplant.jp', '$2a$10$YtgYZptPjjfb/zDCJ.fVpupHDhalm8aCTmmpIFXoqaygTFmfiYFZy')

SELECT pg_catalog.setval('users_id_seq', 37, true)

INSERT INTO washing_instructions (id, created_at, updated_at, deleted_at, code, name, image) VALUES (2, '2016-11-25 07:31:59.202295+00', '2016-12-07 03:34:32.465573+00', NULL, '161', '60℃を限度とし、弱い洗濯処理。', '{"FileName":"50.png","Url":"//aigle-dev.s3-ap-northeast-1.amazonaws.com/washing_instructions/2/image/50.20161125074116406058401.png"}')

SELECT pg_catalog.setval('washing_instructions_id_seq', 2, true)

SELECT pg_catalog.setval('wish_items_id_seq', 1, false)