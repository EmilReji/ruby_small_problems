=begin
input: integer
output: string representing time
positive total_min is number of minutes after midnight
negative total_min is number of minutes before midnight
0 is midnight "00:00"
should be able to handle more minutes then in a day

algorithm:
store sign somewhere; if negative, convert to positive for initial calc
simplyify the total_min (positive) to within a day by running divmod(1440) on it
until the first value is 0 (meaning no days left)
then if negative, make total_min 1440 - total_min
if positive, total_min number remains as is
run total_min.divmod(60); 1st value is hours, 2nd value is minutes
convert each to a string; if less than 2 length, add a leading 0 to each/one
then concatenate with : and return as answer
=end

def fix_length(str)
  return "0" + str if str.size != 2
  str
end

def time_of_day(total_min)
  if total_min < 0
    total_min *= -1
    is_positive = false
  elsif total_min > 0
    is_positive = true
  else
    return "00:00"
  end
  
  extra_days = nil

  while (extra_days != 0)
    extra_days = total_min.divmod(1440)[0]
    total_min = total_min.divmod(1440)[1]
  end
  
  total_min = 1440 - total_min unless is_positive

  hours, minutes = total_min.divmod(60).map(&:to_s)

  hours = fix_length(hours)
  minutes = fix_length(minutes)

  "#{hours}:#{minutes}" 
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
