=begin
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 
6th number appears amongst the first 5 numbers.

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
=end
nums = []
puts "==> Enter the 1st number:"
nums << gets.chomp.to_i
puts "==> Enter the 2nd number:"
nums << gets.chomp.to_i
puts "==> Enter the 3rd number:"
nums << gets.chomp.to_i
puts "==> Enter the 4th number:"
nums << gets.chomp.to_i
puts "==> Enter the 5th number:"
nums << gets.chomp.to_i
puts "==> Enter the last number:"
last = gets.chomp.to_i

if nums.include?(last)
  puts "The number #{last} appears in #{nums}."
else
  puts "The number #{last} does not appear in #{nums}."
end