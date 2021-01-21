require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

pp doc.at_css('h2')
pp doc.css('h2').first # この2つは同じものが取得される
pp doc.at_css('.hogehoge')
pp doc.css('.hogehoge').first # この2つも結果的に同じものが取得される

doc.css('th').each do |th| # eachの例
  pp th
end
