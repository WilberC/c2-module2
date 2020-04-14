# frozen_string_literal: true

def min(numbers)
  refer_number = numbers[0]
  numbers.each do |number|
    refer_number = number if refer_number > number
  end
  refer_number
end

def max(numbers)
  refer_number = numbers[0]
  numbers.each do |number|
    refer_number = number if refer_number < number
  end
  refer_number
end

numbers = [2, 56, 5, 3, 4, 6, 1, -3456, 123_891, 454, 1, 23, 5, 7]
puts 'Min: ' + min(numbers).to_s # Result is -3456
puts 'Max: ' + max(numbers).to_s # Result is 123891
