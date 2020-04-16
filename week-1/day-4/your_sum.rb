class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    array.reduce(initial_value) { |sum, val| sum + (block_given? ? (yield val) : val) }
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum # gives 6
p my_array.sum(10) # gives 16
p my_array.sum(0) { |n| n ** 2 } # gives 14