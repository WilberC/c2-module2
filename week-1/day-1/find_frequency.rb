def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end

puts find_frequency('Ruby is The best language in the World', 'the')