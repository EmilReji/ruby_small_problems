=begin
input: string representing time
output: number between 0 and 1439 inclusive
input string will alwas have 2 numbers for hours, colon, and 2 numbers for minutes
pull out the hours and minutes; use those to compute total minutes
then run total min % (60 * 24); convert to integer and return
that is for after midnight
for before midnight, take that number, subtract it from (60 * 24) and get new number
=end

def after_midnight(time)
  hours, mins = time.split(":").map(&:to_i)
  total_mins = hours * 60 + mins
  total_mins % 1440
end

def before_midnight(time)
  hours, mins = time.split(":").map(&:to_i)
  total_mins = hours * 60 + mins
  (1440 - total_mins) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
