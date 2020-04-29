require 'http'

response = HTTP.headers(accept: 'application/json').get('https://icanhazdadjoke.com/')
puts '---------------------'
puts response.parse['joke']
puts '---------------------'
