package gofixtures_test

import (
	"fmt"

	"github.com/theplant/gofixtures"
)

func ExampleSql_2main() {
	db := connectDB()
	db.AutoMigrate(&Product{}, &Category{}, &Gender{})

	var d = gofixtures.Data(
		gofixtures.Sql(`
--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: aigle
--

INSERT INTO categories (id, created_at, updated_at, deleted_at, code, name, category_id, slug, full_name) VALUES (1, '2016-11-25 07:13:36.286416+00', '2016-12-02 04:23:56.813127+00', NULL, 'CL1', 'ラバーブーツ', 2, '', 'レディース ラバーブーツ');
INSERT INTO categories (id, created_at, updated_at, deleted_at, code, name, category_id, slug, full_name) VALUES (2, '2016-12-02 04:23:56.812291+00', '2016-12-07 03:34:32.460387+00', NULL, 'CL2', 'レディース シューズ', 0, 'レディース シューズ', 'レディース シューズ');

--
-- Data for Name: genders; Type: TABLE DATA; Schema: public; Owner: aigle
--

INSERT INTO genders (id, created_at, updated_at, deleted_at, slug, name) VALUES 
(2, '2016-11-25 07:13:14.382785+00', '2016-11-25 07:13:14.382785+00', NULL, 'women', 'レディース'), 
(1, '2016-11-25 07:13:03.156396+00', '2016-12-07 03:34:32.457533+00', NULL, 'men', 'メンズ'),
(3, '2016-12-02 04:11:18.348472+00', '2016-12-08 05:39:06.093414+00', NULL, 'kids', 'キッズ　ベビー');

--
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: aigle
--

INSERT INTO product_categories (product_id, category_id) VALUES (2, 1);
INSERT INTO product_categories (product_id, category_id) VALUES (1, 2);
INSERT INTO product_categories (product_id, category_id) VALUES (3, 2);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: aigle
--

INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (2, '2016-11-27 06:49:13.371488+00', '2016-12-05 08:44:51.485799+00', NULL, 'ZBF1405', 1, 'コンビネーショングローブ', '', '17SS', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">ウールの強縮絨ニット生地とニットリブ、上質で柔らかく、手袋をはめたままスマホの操作が可能な山羊革のコンビネーショングローブです。</span></p>
<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">幅広いコーディネートに合わせていただけるシンプルなデザインでありながら、手口のトリコロール配色がフランスブランドのAIGLEらしさを感じさせてくれます。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">また、保温性能を高めるため、インナーにシンサレートを使用しています。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;">3Mシンサレート高機能中綿は、同じ厚みのダウンと比較すると、1.5～2倍の保温機能があり暖かいのが特徴です。</span><br style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif; font-size: 14px;"><br></p>
<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">サイズはメンズサイズのM/L展開になります。</span></p>', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">毛60%ﾚｰﾖﾝ40%</span><span style="letter-spacing: 0px;"></span></p>', 'Japan', 1, '514g　(Mサイズ)');
INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (1, '2016-11-25 07:30:21.179825+00', '2016-12-08 06:37:53.705366+00', NULL, 'ZBF1407', 1, 'GORE ウルフクリーカー', 'GORE jacket', '17SS', '<p>PERTEXの中でも軽量でストレッチ性のある3L素材を使用したフィッシュテールタイプのレインコートです。胸と背中はベンチレーションになっており蒸れを緩和します。左裾ポケットでパッカブルになり濡れたままでも収納出来ます。<span></span></p>
<p><br></p>
<p><br></p>', '<p>素材： 表,デクルーズプレインウイーブ（ナイロン100%）裏,リフレクティブプリントマイクロテックスライト（ポリエステル100%）</p>', 'China', 2, '514g　(Mサイズ)');
INSERT INTO products (id, created_at, updated_at, deleted_at, code, gender_id, name, english_name, season, description, material_description, made_country, icon_flag_id, weight) VALUES (3, '2016-12-07 03:34:32.459302+00', '2016-12-08 06:42:32.548282+00', NULL, 'ZBF1508', 1, '【オム】T-KIT MODS', 'T-KIT MODS', '15H', '<p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">T-KITアウターはシーズンレスで着用できることを前提として軽量のGORE-TEXを採用しました。</span></p><p><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">MODSフィッシュテールコート（M-51）をデザインベースとしシルエット見直し、ポケットのデザインと仕様を防水性を高める折り閉じ型（フラップを閉じる事で口が閉じる）しました。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">また、ウエストのスピンドル出口もフラップをつけ同様の効果をねらっています。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><span style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">T-KITアウターなのでインナー装着を前提にやや大きめのサイズ感としています。</span><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><br style="font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;"><br></p><p><span style="color: rgb(0, 0, 0); font-family: &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, verdana, sans-serif;">＊この商品はAIGLEオリジナルのTHERMO KIT対応のアウターです。THERMO KIT対応のインナーをジッパーで組み合わせて1枚のウェアとして着用することができます。</span></p>', '<p><span style="color: rgba(0, 0, 0, 0.870588); font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif;">表地：ナイロン100％</span></p>', 'China', 1, '500g');

        `, []string{"products", "product_categories", "genders", "categories"}),
	)

	d.TruncatePut(db)
	var p Product
	db.Preload("Gender").Preload("Categories").Find(&p, 3)
	fmt.Println(p.EnglishName)
	fmt.Println(p.Gender.Name)
	fmt.Println(len(p.Categories))

	//Output:
	//T-KIT MODS
	//メンズ
	//1
}
