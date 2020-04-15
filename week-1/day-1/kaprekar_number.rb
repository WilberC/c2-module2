def kaprekar?(k)
  rpta = (k ** 2).to_s
  max_option = rpta.length
  (0..max_option).each do |number|
    first_number = rpta[0..number]
    second_number = rpta[(number + 1)..max_option]
    next if second_number.nil?
    sum = first_number.to_i + second_number.to_i
    return true if sum == k
  end
  false
end
