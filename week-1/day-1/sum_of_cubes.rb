def sum_of_cubes(a, b)
  sum = 0
  (a..b).each do |i|
    sum += i ** 3
  end
  sum
end

puts sum_of_cubes 1, 3