def length_finder(input_array)
  length_array = []
  input_array.each do |item|
    length_array.push(item.length)
  end
  length_array
end

length_finder ['I', 'am', 'genius']