def hailstone(x)
  puts '--------------'
  puts "Starts #{x}"
  while x != 1
    if x.even?
      x /= 2
    else
      x = (x * 3) + 1
    end
    puts x
  end
  puts '--------------'
end

puts 'Enter your start number'
x = gets.chomp.to_i
hailstone x

