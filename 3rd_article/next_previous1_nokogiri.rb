require 'nokogiri'

html = open('nokogiri_practice.html').read
doc = Nokogiri::HTML.parse(html)

doc.css('td').each do |td|
  if td.text.strip == '氷' then
    puts td.next_element.text
  end
end

doc.css('td').each do |td|
  if td.text.strip == 'セラフィックローサイト' then
    puts td.previous_element.text
  end
end
