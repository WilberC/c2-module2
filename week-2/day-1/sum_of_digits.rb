def sum_values(val)
  val.split('').map!(&:to_i).reduce(:+)
end

def digital_root(n)
  n = sum_values(n.to_s) while n.to_s.length > 1
  n
end

digital_root 16