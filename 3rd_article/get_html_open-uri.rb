require 'open-uri'

html = URI.open('').read
puts html
