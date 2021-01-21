require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

pp doc.at_css('table th')
pp doc.at_css('table').at_css('th') # この2つは同じものが取得される
