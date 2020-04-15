def summation(n)
  (1..n).map { |val| yield val }.inject { |sum, a| sum + a }
end

p summation(3) { |val| val * 2 } # 1 * 2 + 2 * 2 + 3 * 2 = 12
