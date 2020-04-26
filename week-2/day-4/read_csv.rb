require 'csv'
grades_table = CSV.read('grades.csv', headers: true)
grades_table.sort_by { |element| element[-2] }.reverse[0..2].each_with_index do |val, i|
  puts "#{i + 1} - #{val[1]} with a final grade of #{val[-2]}."
end
