class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.reduce(0) do |sum, order|
      sum + order.keys.reduce(0) do |price, key|
        price + @menu[key] * order[key]
      end
    end
  end
end

restaurant = Restaurant.new({rice: 3, noodles: 2})
p restaurant.cost({rice: 1, noodles: 1}, {rice: 2, noodles: 2})
