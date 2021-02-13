require 'open-uri'
require 'nokogiri'
require 'json'

html = URI.open('').read
doc = Nokogiri::HTML.parse(html)
doc.css('select[name="game"] > option').each do |title|
  value = title.attribute('value').value
  next if value.empty?
  puts title.text.strip
  url = "https://arao99.github.io/zenn_scraping/#{value}.json"
  sleep 1
  boss_json = URI.open(url).read
  boss_hash = JSON.parse(boss_json)
  boss_hash['boss'].each do |boss|
    puts boss['name']
  end
end
