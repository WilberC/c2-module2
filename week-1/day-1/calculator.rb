class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def divide(a, b)
    a / b
  end

  def multiply(a, b)
    a * b
  end

  def exponentiate(a, b)
    a ** b
  end

  def modulo(a, b)
    a % b
  end
end

puts 'What math operation you will do?'
puts 'For add           --> +'
puts 'For subtract      --> -'
puts 'For divide        --> /'
puts 'For multiply      --> *'
puts 'For exponentiate  --> **'
puts 'For modulo        --> %'
print 'operation: '
operation = gets.chomp
puts 'Please write the numbers: a, b'
print 'a : '
a = gets.chomp.to_i
print 'b : '
b = gets.chomp.to_i
# puts "#{operation} , #{a}, #{b}"
print 'The result is : '
new_operation = Calculator.new
case operation
when '+'
  print new_operation.add(a, b)
when '-'
  print new_operation.subtract(a, b)
when '/'
  print new_operation.divide(a, b)
when '*'
  print new_operation.multiply(a, b)
when '**'
  print new_operation.exponentiate(a, b)
when '%'
  print new_operation.modulo(a, b)
else
  puts "Sorry, but we can't do that "
end
