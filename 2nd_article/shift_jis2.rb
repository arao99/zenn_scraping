require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスして文字コードがShift JISのhtmlを取得する
html = URI.open(url).read

# 取得したhtmlをNokogiriでパースする
doc = Nokogiri::HTML.parse(html, nil, 'sjis')

# htmlのtitleを取得して出力する
title = doc.title
puts title
