require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスしてhtmlを取得する
html = URI.open(url).read

# 取得したhtmlをNokogiriでパースする
doc = Nokogiri::HTML.parse(html)

# ニュースの見出しを取得して出力する
doc.at_css('section#tabpanelTopics1 ul').css('li').each do |li|
  puts li.text.strip
end
