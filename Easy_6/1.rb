=begin

=end

DEGREE = "\xC2\xB0"

def dms(num)
  degrees = num.truncate
  minutes = ((num - degrees) * 60).truncate
  seconds = ((num - degrees) * 60) - ((num - degrees) * 60).floor
  seconds = (seconds * 60).truncate
  format("%01d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
