def put_n(text, n)
  n = n.to_i
  raise ArgumentError, 'It has to be a Integer Number' unless n.is_a? Integer

  raise ArgumentError, 'The number have to be Positive' if n.zero? || n.negative?

  n.times { puts text }
end

# put_n('This will be printed 5 times!', 5.1)
# put_n('This will be printed 5 times!', 0)
# put_n('This will be printed 5 times!', -1)
put_n('This will be printed 5 times!', 5)
