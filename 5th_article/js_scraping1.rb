require 'open-uri'
require 'nokogiri'

html = URI.open('').read
doc = Nokogiri::HTML.parse(html)
puts doc.at_css('td').text.strip
