require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

pp doc.css('h2') # 複数取得
pp doc.css('#through') # 1つだけ取得
pp doc.css('.under') # 複数取得
pp doc.css('.hogehoge') # 条件に合う要素が存在しない場合
pp doc.css('table th') # もちろんこんなことも可能
pp doc.css('h2').class # 戻り値のクラスを確認(複数)
pp doc.css('#through').class # 戻り値のクラスを確認(1つだけ)
pp doc.css('.hogehoge').class # 戻り値のクラスを確認(存在しない)
