def palindrome?(sentence)
  clean_sentence = sentence.delete(' ').downcase
  clean_sentence.reverse == clean_sentence
end
