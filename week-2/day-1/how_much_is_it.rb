# frozen_string_literal: true

PEN = 1.0 / 3

ARS = 1.0 / 40

list = [
    {category: 'Sporting Goods', price: 'USD 49.99', stock: true, amount: 10, name: 'Football'},
    {category: 'Sporting Goods', price: 'PEN 9.99', stock: true, amount: 3, name: 'Baseball'},
    {category: 'Sporting Goods', price: 'ARS 29.99', stock: false, amount: 0, name: 'Basketball'},
    {category: 'Electronics', price: 'PEN 99.99', stock: true, amount: 5, name: 'iPod Touch'},
    {category: 'Electronics', price: 'USD 399.99', stock: false, amount: 0, name: 'iPhone 5'},
    {category: 'Electronics', price: 'PEN 199.99', stock: true, amount: 2, name: 'Nexus 7'}
]
stock_and_price = []
list.map do |element|
  price = element[:price].split
  price_usd = case price[0]
              when 'ARS'
                (price[1].to_f * ARS).round(2)
              when 'PEN'
                (price[1].to_f * PEN).round(2)
              else
                price[1].to_f.round(2)
              end
  stock_and_price << (price_usd * element[:amount]).round(2)
end

value_stock_total = stock_and_price.reduce(:+).round(2)
puts "Total Value in USD of the stock: #{value_stock_total}"
max_stock_val = stock_and_price.each_with_index.max
product = list[max_stock_val[1]]
puts "The product with the most stock value in the storage is #{product[:name]} with #{max_stock_val[0]} in USD and a qty of #{product[:amount]}."
