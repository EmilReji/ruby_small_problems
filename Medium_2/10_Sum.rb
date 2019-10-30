=begin
Write a method that computes the difference between the square 
of the sum of the first n positive integers and the sum of the 
squares of the first n positive integers.
find square of sum (1 + 2 + 3)**2

find sum of squares (1**2 + 2**2 + 3**2)

=end

def square_of_sum(num)
  (1..num).sum  ** 2
end

def sum_of_squares(num)
  sum = 0
  (1..num).each do |curr|
    sum += curr ** 2
  end
  sum
end

def sum_square_difference(num)
  square_of_sum(num) - sum_of_squares(num)
end

p sum_square_difference(3)
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150