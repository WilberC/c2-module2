class CupcakeBill
  attr_reader :bread_kinds_price, :frosting_kinds_price, :filling_kinds_price, :presentations

  def initialize
    @bread_kinds_price = [{kind: 'Vanilla', price: 0.50},
                          {kind: 'Chocolate', price: 0.75},
                          {kind: 'Red Velvet', price: 0.85}]
    @frosting_kinds_price = [{kind: 'Vanilla', price: 0.60},
                             {kind: 'Oreo', price: 1.1},
                             {kind: 'Mint chocolate', price: 1.45}]
    @filling_kinds_price = [{kind: 'Nutella', price: 1},
                            {kind: 'Strawberry', price: 0.55},
                            {kind: 'Peanut butter', price: 0.45}]
    @presentations = [{presentation: 'Individual (1 cupcake)', discount_percentage: 0, qty: 1},
                      {presentation: 'Six pack (6 cupcakes) and have a discount of 4%', discount_percentage: 4, qty: 6},
                      {presentation: 'Dozen pack (12 cupcakes) and have a discount of 10%', discount_percentage: 10, qty: 12}]
  end

  def print_opts_and_get_option(array_options, type)
    puts "Please select which kind of #{type} do you want."
    i = 1
    array_options.each do |option_obj|
      puts 'Select : ' + i.to_s + ' ==> for ' + option_obj[:kind]
      i += 1
    end
    puts 'Select : ' + i.to_s + ' ==> for None of them.' if type == 'filling'
    gets.chomp.to_i
  end

  def bread
    print_opts_and_get_option(@bread_kinds_price, 'bread')
  end

  def frosting
    print_opts_and_get_option(@frosting_kinds_price, 'frosting')
  end

  def filling
    print_opts_and_get_option(@filling_kinds_price, 'filling')
  end

  def discount
    puts '***************************************'
    puts 'We have 3 presentations which one do you want?'
    puts '***************************************'
    i = 1
    @presentations.each do |presentation_obj|
      puts 'Select : ' + i.to_s + ' ==> for ' + presentation_obj[:presentation]
      i += 1
    end
    gets.chomp.to_i
  end

  def calculate_price
    puts '======================================='
    puts 'Hi, I will help you with your order.'
    puts '======================================='
    cupcake_price = @bread_kinds_price[bread - 1][:price] + @frosting_kinds_price[frosting - 1][:price] + @filling_kinds_price[filling - 1][:price]
    discount_obj = @presentations[discount - 1]
    if discount_obj[:qty] == 1
      discount_obj[:qty] * cupcake_price
    else
      (discount_obj[:qty] * cupcake_price) * (1 - (discount_obj[:discount_percentage].to_f / 100))
    end
  end
end

to_pay = CupcakeBill.new.calculate_price

puts '-----------------'
puts 'The price for this order is : ' + to_pay.round(2).to_s
puts '-----------------'
