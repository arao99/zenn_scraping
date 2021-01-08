require 'open-uri'

url = ''

# 取得されたメタ情報のうちContent-Typeとcharsetを確認する
URI.open(url) {|f|
  p f.content_type
  p f.charset
}
