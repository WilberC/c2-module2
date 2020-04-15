def filter(arr)
  new_array = []
  for i in arr
    new_array << i if yield i
  end
  new_array
end

test_array = [2, 3, 4, 5]
p filter(test_array) { |element| element > 3 }
# Result: [4, 5] -> numbers 2 and 3 were removed