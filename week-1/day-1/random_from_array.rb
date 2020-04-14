def random_select(array, n)
  random_pick = []
  n.times do
    random_pick.push(array[rand(array.length)])
  end
  random_pick
end