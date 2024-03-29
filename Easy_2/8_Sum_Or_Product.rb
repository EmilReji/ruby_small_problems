=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all 
numbers between 1 and the entered integer.

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end
integer = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  integer = gets.chomp.to_i
  break if integer > 0
  puts ">> Your integer is invalid. Please try again."
end
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp
if choice == 's'
  puts "The sum of the integers between 1 and #{integer} is #{(1..integer).sum}"
else
  puts "The product of the integers between 1 and #{integer} is #{(1..integer).reduce(:*)}"
end
