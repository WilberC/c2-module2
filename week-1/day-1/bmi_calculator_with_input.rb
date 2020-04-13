def calculate_bmi(weight, height)
  (weight / (height ** 2)).round(2)
end

print "Show me the weight (kg): "
weight = gets.chomp.to_f
print "Show me the height (m):"
height = gets.chomp.to_f

puts calculate_bmi(weight, height)
