require 'open-uri'
require 'json'

heroes_json = URI.open('').read
heroes_array = JSON.parse(heroes_json)
pp heroes_array
puts heroes_array.first['name']
