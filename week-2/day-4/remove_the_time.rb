require 'time'

def shorten_to_date(long_date)
  long_date.split(',')[0]
  # Date.strptime(long_date, '%A %B %d, %I%p').strftime('%A %B %d') #it fails cause it does not have the year so it
  # catch the current year by default 
end

shorten_to_date("Monday February 2, 8pm") #, "Monday February 2"