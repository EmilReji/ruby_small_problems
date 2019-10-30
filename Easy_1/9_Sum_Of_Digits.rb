=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.
For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
=end

def sum(num)
  num.to_s.chars.reduce { |sum, num| sum.to_i + num.to_i }
end

def sum1(num)
  num.to_s.split("").map(&:to_i).reduce(&:+)
end

puts sum(496)
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
