puts 'What is your name?'

File.write('write_name.txt', gets.chomp)
puts 'Your name was written in the file'