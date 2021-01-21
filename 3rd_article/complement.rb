require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

puts doc.at_css('table > tr > th').text # オリジナルのhtmlに従った場合
puts doc.at_css('table > tbody > tr > th').text # 開発ツールに従った場合
