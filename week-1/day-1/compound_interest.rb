# frozen_string_literal: true


def calculate_compound(principal, interest_rate, saving_period)
  (principal * ((1 + (interest_rate / 100))) ** saving_period).round(2)
end

def show_compound_detail(principal, interest_rate, saving_period)
  accrued_interest = 0
  (1..saving_period).each do |period|
    total_amount = calculate_compound(principal, interest_rate, period)
    next_amount = calculate_compound(principal, interest_rate, period.next)
    interest_gained = next_amount - total_amount
    accrued_interest += interest_gained
    puts '______________________________________________________________________________'
    puts "|Month: #{period} |Interest Gained: #{interest_gained.round(2)}  |Accrued Interest: #{accrued_interest.round(2)}  |Total Amount:#{total_amount}  |"
    if period.next
      puts '______________________________________________________________________________'
    end
  end
end

puts '================================================================'
puts 'Hi, I will help you calculating your Compound Interest'
puts '================================================================'
puts '----------------------------------------------------------------'
puts "What's your principal?"
principal = gets.chomp.to_f
puts '----------------------------------------------------------------'
puts "What's your interest rate? Example, If your interest rate is 4% "
puts 'enter 4, If your interest is 10% enter 10'
interest_rate = gets.chomp.to_f
puts '----------------------------------------------------------------'
puts "What's your saving period (in months)"
saving_period = gets.chomp.to_f
puts '----------------------------------------------------------------'
puts 'Great, just one more thing.'
puts 'Enter 1  --> If you want to get all the details'
puts 'If you just want to get the final amount put enter and leave it blank.'
show_all = gets.chomp
puts '----------------------------------------------------------------'
if show_all.empty?
  puts calculate_compound principal, interest_rate, saving_period
else
  show_compound_detail principal, interest_rate, saving_period
end
