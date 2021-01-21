require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

pp doc.at_css('th')
pp doc.at_css('th').parent
pp doc.at_css('tr')
pp doc.at_css('tr').children
