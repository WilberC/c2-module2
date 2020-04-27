require 'textstat'

def reading_grade(text)
  p TextStat.coleman_liau_index(text)
end

reading_grade("Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard.")