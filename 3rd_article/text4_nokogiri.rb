require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

red_string = ''
doc.at_css('.red').children.each do |red_child|
  if red_child.text? then # 子ノードがTextの場合
    red_string += red_child.text.strip # 先頭と末尾の空白文字を除去した文字列
  elsif red_child.name == 'br' then # 子ノードがbrタグの場合
    red_string += "\n" # 改行文字に置換
  end
end
puts red_string
