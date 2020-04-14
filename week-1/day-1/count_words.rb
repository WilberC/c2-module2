def count_words paragraph
  downcase_paragraph = []
  paragraph.split(' ').each do |element|
    downcase_paragraph.push(element.downcase)
  end
  clean_paragraph = downcase_paragraph.uniq
  hash_result = {}
  clean_paragraph.each do |not_repeated_item|
    hash_result.store("#{not_repeated_item}", 0)
    downcase_paragraph.each do |paragraph_item|
      if not_repeated_item == paragraph_item
        hash_result["#{not_repeated_item}"] += 1
      end
    end
  end
  puts hash_result
end

count_words("cake cake caKe I like cake very much please gIve me cake I need the cake i need it")
# {
#     "cake" => 6,
#     "i" => 3,
#     "like" => 1,
#     "very" => 1,
#     "much" => 1,
#     "please" => 2,
# #     "give" => 1,
# #     "me" => 1,
# #     "need" => 2,
#     "the" => 1,
#     "it" => 1
# }