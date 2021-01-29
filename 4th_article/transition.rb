require 'open-uri'
require 'nokogiri'

base_url = ''

html = URI.open("#{base_url}nokogiri_practice.html").read
doc = Nokogiri::HTML.parse(html)
puts doc.title

href = doc.at_css('a').attribute('href') # href属性値の取得(相対URL)
link_url = "#{base_url}#{href}" # 相対URLから絶対URLを生成

sleep 1 # アクセス間隔を1秒空ける
html = URI.open(link_url).read
doc = Nokogiri::HTML.parse(html)
puts doc.title
