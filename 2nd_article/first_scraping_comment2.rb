require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスしてhtmlを取得する
html = URI.open(url).read
puts html
