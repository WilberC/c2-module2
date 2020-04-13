def absolute_sum(a, b)
  result = a + b
  result * -1 if result < 0
end

puts absolute_sum(1, -7)