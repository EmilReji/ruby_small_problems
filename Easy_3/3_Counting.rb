=begin
Write a program that will ask a user for an input of a word 
or multiple words and give back the number of characters. 
Spaces should not be counted as a character.
=end

puts "Please write word or multiple words:"
input = gets.chomp
spaces = input.count(' ')
puts "There are #{input.length - spaces} characters in \"#{input}\"."