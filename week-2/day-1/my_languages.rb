def my_languages(results)
  results.values.sort.select { |num| num >= 60 }.reverse.map! { |val| results.key(val) }
end

my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})
