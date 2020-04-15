def non_duplicated_values(values)
  values.select { |val| values.count(val) == 1 }
end

val = [1, 2, 2, 3, 3, 4, 5]
p non_duplicated_values(val)
