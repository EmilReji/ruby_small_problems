=begin
Write a method that takes an integer argument, 
and returns an Array of all integers, in sequence, 
between 1 and the argument.

You may assume that the argument will always 
be a valid integer that is greater than 0.
=end

def sequence2(num)
  arr = []
  1.upto(num) { |curr| arr << curr}
  arr
end

# further exploration
def sequence(num)
  arr = []
  if num > 0
    1.upto(num) { |curr| arr << curr}
  elsif num < 0
    num.upto(-1) { |curr| arr << curr}
  end  
  arr
end

p sequence(-5)
p sequence(-5) == [-1, -2, -3, -4, -5]
p sequence(-3) == [-1, -2, -3]
p sequence(-1) == [-1]
p sequence(0) == []
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]