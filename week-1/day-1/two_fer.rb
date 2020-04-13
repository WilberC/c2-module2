print 'Who? '
who = gets.chomp.capitalize
if !who.empty?
  puts "One for #{who}, one for me."
else
  puts 'One for you, one for me.'
end