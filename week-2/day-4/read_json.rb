require 'json'

json_file = JSON.parse(File.read('tasks.json'))
json_file.map { |el| p el  }