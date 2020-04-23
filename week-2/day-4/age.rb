require 'time'

def age?(year, month, day)
  (Time.now.year - Time.parse("#{day}/#{month}/#{year}").year)
end

p age?(1994, 2, 24) # Should return 26