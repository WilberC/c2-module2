class String
  def to_2000
    l = split('')
    l.each_index do |i|
      if l[i].is_a? String
        i.even? ? (print l[i].upcase) : (print l[i].downcase)
      else
        print l[i]
      end
    end
    puts ''
  end
end

'Hola, como estas?'.to_2000
'Porque escribes de esa manera'.to_2000
'What is wrong with you?'.to_2000