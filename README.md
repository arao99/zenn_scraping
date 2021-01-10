# これは何？
Zennに投稿している「RubyでWebスクレイピング」シリーズのためのリポジトリ。初回記事へのリンクはAboutに記載。

# 使い方

## 最初にやること
cloneしてきたら、まずはBundlerでgemをインストールする。
```
$ bundle install --path .bundle
```
インストール先はどこでもいいが、`.bundle`にインストールする前提で`.gitignore`を作成している。インストールにコケるgemがある場合、本当に必要かどうか（例えばNokogiriだけを使う記事を読んでいる場合はMechanizeやActiveRecordなどは要らない）確かめ、必要ない場合は適宜コメントアウトするなりして対応する。必要なら我慢して対処方法を模索する。

## 各記事のサンプルスクリプト
記事タイトルのナンバリングごとにディレクトリを分けているので、そのディレクトリに移動して使う。
```
$ cd 2nd_article/
$ ls
first_scraping.rb		shift_jis1-1.rb
first_scraping_comment1.rb	shift_jis1.rb
first_scraping_comment2.rb	shift_jis2.rb
first_scraping_comment3.rb	shift_jis3.rb
first_scraping_comment4.rb
```

## その他
`docs/`はGitHub Pagesのためのもの。記事で使いたい画像ファイルや、Nokogiri練習用のHTMLなんかが転がっている。
