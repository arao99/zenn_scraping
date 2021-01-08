require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスしてhtmlを取得する
html = URI.open(url).read

# 取得したhtmlをNokogiriでパースする
doc = Nokogiri::HTML.parse(html)

# htmlのtitleを取得して出力する
title = doc.title
puts title
