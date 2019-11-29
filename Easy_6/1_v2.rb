=begin
input: integer or floating point number betwen 0 and 350
output: string containing degrees, minutes, and seconds
first convert to a float number to get
the given number's non-decimal part should be the degrees (round down?? truncate??)
the decimal part represents total minutes and seconds in the form of degrees
multiply that decimal part by 60; the non-decimal part of this is the minutes
the decimal part of this is the total seconds in the form of minutes
multiple that decimal part by 60; that number to_i should get the seconds
combine all 3 in a string using format method %02d (execept minutes which can have any 1+ digits)

solution starts by creating total seconds by multiplying given number * 3600
then reverse engineers total degrees (modulus of 3600), then total minutes (rest modulus of 60),
then seconds (remainder)
must shorter and more efficient; less match needed
also used constants for 60 and 3600
=end

DEGREE = "\xC2\xB0"

def dms2(num)
  num = num.to_f
  degrees = num.truncate
  rest = num - degrees
  minutes = (rest * 60).truncate
  rest = (rest * 60) - minutes
  seconds =  (rest * 60).to_i
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds) 
end

def dms1(num)
  num = num.to_f
  degrees = num.truncate
  return "0#{DEGREE}00'00\"" if degrees == 0
  rest = num.divmod(degrees)[1]
  minutes = (rest * 60).truncate
  return "#{degrees}#{DEGREE}00'00\"" if minutes == 0
  rest = (rest * 60).divmod(minutes)[1]
  seconds = (rest * 60).to_i
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end

def dms(num)
  return "#{num}#{DEGREE}00'00\"" unless (0..360).include?(num)
  num = num.to_f
  degrees = num.truncate
  rest = num - degrees
  minutes = (rest * 60).truncate
  rest = (rest * 60) - minutes
  seconds =  (rest * 60).to_i
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00") # returns 254 35 59 because of line 3 returning 0.599999 rather than 0.6 (froom 254.6 - 254)
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(400°00'00")
p dms(-40) == %(-40°00'00")
p dms(-420) == %(-420°00'00")
