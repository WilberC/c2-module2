
def parts_sums(ls)
  return [0] if ls.empty?

  array = [ls.reduce(:+)]
  ls.each { |val| array << (array.last - val) }
  array
end

p parts_sums [0, 1, 3, 6, 10]
# p parts_sums []
