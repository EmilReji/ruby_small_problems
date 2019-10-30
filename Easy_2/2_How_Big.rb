=begin
Build a program that asks a user for the length and 
width of a room in meters and then displays the area 
of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Modify this program to ask for the input measurements in feet, 
and display the results in square feet, square inches, and square centimeters.
=end



def print_area2(length, width)
  meter_area = (length * width).round(2)
  feet_area = (meter_area*10.7639).round(2)
  puts "The area of the room is #{meter_area} square meters (#{feet_area} square feet)."
end

=begin
puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i
print_area(length, width)
=end

def print_area(length, width, units = 'meters')
  if units == 'meters'
    meter_area = (length * width).round(2)
    feet_area = (meter_area*10.7639).round(2)
  else
    feet_area = (length * width).round(2)
    meter_area = (feet_area/10.7639).round(2)
  end
  # 1 Square Foot = 929.0304 Square Centimeters
  cm_area = (feet_area * 929.0304).round(2)
  puts "The area of the room is #{meter_area} square meters (#{feet_area} square feet or #{cm_area} square centimeters)."
end

unit = ''
loop do
  puts "Enter the units you would like to use: (meters or feet)"
  unit = gets.chomp
  break if unit == 'meters' || unit == 'feets'
  puts "Your input was invalid. Please try again."
end

puts "Enter the length of the room in #{unit}:"
length = gets.chomp.to_i
puts "Enter the width of the room in #{unit}:"
width = gets.chomp.to_i
print_area(length, width, unit)
