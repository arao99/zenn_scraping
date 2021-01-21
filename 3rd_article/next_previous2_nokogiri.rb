require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

tr = doc.at_css('tr')
pp tr.children # テーブルのヘッダー行の子要素を確認

center_th = tr.at_css('th:nth-of-type(2)')
pp center_th # テーブルのヘッダー行の真ん中のセル（通常攻撃魔法）

pp center_th.next_element # 次のセル（大魔法）
pp center_th.next_sibling # ？？？
pp center_th.previous_element # 前のセル（属性）
pp center_th.previous_sibling # ？？？
