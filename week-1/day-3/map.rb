def map(arr)
  index = 0
  new_array = []
  while index < arr.length
    new_array.push(yield arr[index])
    index += 1
  end
  new_array
end

test_array = [2, 3, 4, 5]
p map(test_array) { |element| element * 3 }
# Result: [6, 9, 12, 15]