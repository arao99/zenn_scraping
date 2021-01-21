require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

puts doc.at_css('#through').attribute('id') # これは全く意味がない

link_element = doc.at_css('a') # aタグ
puts link_element.text
puts link_element.attribute('href') # aタグのhref属性を取得して出力
