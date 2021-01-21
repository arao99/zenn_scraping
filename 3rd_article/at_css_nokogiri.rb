require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

pp doc.at_css('h1') # 条件に合う要素が1つだけの場合
pp doc.at_css('#through') # CSSセレクタらしくidで指定
pp doc.at_css('.under') # classで指定。条件に合う最初の要素を取得
pp doc.at_css('body > div:nth-child(3)') # nth-childも使える
pp doc.at_css('body > h2:nth-of-type(3)') # nth-of-typeも使える
pp doc.at_css('h1').class # 戻り値のクラスを確認
pp doc.at_css('.hogehoge') # 条件に合う要素が存在しない場合
