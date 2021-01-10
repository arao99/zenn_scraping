require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスして文字コードがShift JISのhtmlと文字コードを取得する
charset = nil
html = URI.open(url) {|f|
  charset = f.charset
  f.read
}

# 取得したhtmlをNokogiriでパースする
doc = Nokogiri::HTML.parse(html, nil, charset)

# htmlのtitleを取得して出力する
title = doc.title
puts title
