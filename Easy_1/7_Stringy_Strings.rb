=begin
Write a method that takes one argument, a positive integer, 
and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.
=end

def stringy2(num)
  str = ''
  num.times do |index|
    str += '1' if index.even?
    str += '0' if index.odd?
  end
  str
end

def stringy(num, start = 1)
  str = ''
  second = start == 1 ? 0 : 1
  num.times do |index|
    str += index.even? ? start.to_s : second.to_s 
  end
  str
end

puts stringy(6) == '101010'
puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(9, 1) == '101010101'
puts stringy(9, 0) == '010101010'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

