=begin
Write a method that returns the number of Friday 
the 13ths in the year given by an argument. You may 
assume that the year is greater than 1752 (when the 
United Kingdom adopted the modern Gregorian Calendar) 
and that it will remain in use for the foreseeable future.

if current month contains 5 fridays, month to array
for current month
- find first friday by starting with 1st and increment till .friday? returns true
- once 1st friday found, find last day # in month (28, 30, 31)
- Then see how many times 1st friday day can be incremented by 7 while staying less than
or equal to the last day in month
- If this number is 5, add month to array; else next
=end

def leap_year?(year)
  return false if year % 4 != 0 
  return false if year % 100 == 0 && year % 400 != 0 && year >= 1752
  return true
end

def get_num_days(month, year)
  if [4, 6, 9, 11].include?(month)
    30
  elsif month == 2 && leap_year?(year)
    29
  elsif month == 2
    28
  else
    31
  end
end

def months_with_five_fridays(year)
  result = []
  12.times do |month|
    curr_month = month + 1
    date = Time.new(year, curr_month, 1)
    while !date.friday?
      date += (60*60*24)
    end
    friday_count = 0
    while date.month == curr_month
      date += (60*60*24*7)
      friday_count += 1
    end
    result << curr_month if friday_count == 5
  end
  result
end

p months_with_five_fridays(2018)
p months_with_five_fridays(2019)
p months_with_five_fridays(2020)
# https://www.thebalance.com/five-paycheck-months-1387871

def friday_13th(year)
  day = 13
  month = 1
  count = 0
  (1..12).each do |month|
    count += 1 if Time.new(year, month, day).friday?
  end
  count
end



#p friday_13th(2015) == 3
#p friday_13th(1986) == 1
#p friday_13th(2019) == 2