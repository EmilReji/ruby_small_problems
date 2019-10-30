=begin
The time of day can be represented as the number of minutes before 
or after midnight. If the number of minutes is positive, the time is after 
midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns 
the time of day in 24 hour format (hh:mm). Your method should work with any 
integer input.

You may not use ruby's Date and Time classes.
Disregard Daylight Savings and Standard Time and other complications.

Input: integer representing minutes
Output: string represent hh:mm in military time (0 to 24)
negative input minutes means go backwards

Algorithm:
Create var indicating if positive, negative, or 0; use string
Convert minutes to 2 vars; hours and minutes; use divmod(60)

=end

def time_of_day(total_minutes)
  if total_minutes > 0 
    status = "positive"
  elsif total_minutes < 0
    status = "negative"
    total_minutes *= -1
  else
    status = "zero"
    return "00:00"
  end
  minutes = total_minutes.divmod(60)[1]
  hours = total_minutes.divmod(60)[0].divmod(24)[1]
  p "#{hours}:#{minutes}"
  if status == "negative"
    hours = 24 - hours
    if minutes != 0
      hours -= 1
    end
  end
  "#{hours}:#{minutes}"
end

p time_of_day(-1437) #== "00:03"

=begin
p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
=end
