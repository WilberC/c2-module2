def number_shuffle(number)
  # possibilities = (1..number).inject(:*)
  number_str = number.to_s
  numbers_array = number_str.split('').map { |number_str| number_str }
  list_numbers = []
  numbers_array.permutation(number_str.length).to_a.each do |obj|
    list_numbers.push(obj.join('').to_i)
  end
 list_numbers.uniq
end

number_shuffle 123
