def process_orders(people_orders)
  list_dishes = people_orders.values
  clean_list_dishes = list_dishes.uniq
  final_hash = {}
  clean_list_dishes.each do |dish|
    final_hash.store("#{dish}", list_dishes.count("#{dish}"))
  end
  final_hash
end

people_orders = {
    "julio" => "pizza",
    "diego" => "saltado",
    "andres" => "hamburguer",
    "ximena" => "ceviche",
    "felipe" => "pizza",
    "jon" => "saltado",
    "snow" => "ceviche",
    "pepe" => "fried chicken",
    "queen of dragons" => "ice cream",
    "jose" => "hamburguer",
    "jafeth" => "fried chicken"
}
puts process_orders(people_orders)
# ice cream -> 1
# pizza -> 2
# saltado -> 2
# hamburguer -> 2
# ceviche -> 2
# fried chicken -> 2