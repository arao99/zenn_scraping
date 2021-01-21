require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

puts doc.at_css('h1').text.strip
puts doc.at_css('.red').text.strip
puts doc.at_css('.blue').text.strip
