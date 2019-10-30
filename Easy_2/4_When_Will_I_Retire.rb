=begin
Build a program that displays when the user 
will retire and how many years she has to work till retirement.
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i
curr_year = Time.now.year
years_to_retire = retire_age - age
puts "It's #{curr_year}. You will retire in #{curr_year + years_to_retire}."