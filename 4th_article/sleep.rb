require 'open-uri'
require 'nokogiri'

url = ''

html = URI.open(url).read
doc = Nokogiri::HTML.parse(html)
title = doc.title
puts title
pp Time.now # 現在時刻を出力

sleep 1 # 1秒スリープ

html = URI.open(url).read
doc = Nokogiri::HTML.parse(html)
title = doc.title
puts title
pp Time.now

sleep rand(1.5..3.0) # 1.5〜3.0秒のランダムスリープ

html = URI.open(url).read
doc = Nokogiri::HTML.parse(html)
title = doc.title
puts title
pp Time.now
