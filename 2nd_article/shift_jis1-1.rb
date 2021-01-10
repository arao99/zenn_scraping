require 'open-uri'
require 'nokogiri'

url = ''

# urlにアクセスしてhtmlを取得し、その文字コードを確認する
charset = nil
html = URI.open(url) {|f|
  charset = f.charset
  f.read
}
puts charset
