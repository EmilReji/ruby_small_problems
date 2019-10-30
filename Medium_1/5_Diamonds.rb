=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

number indicates number of stars along each axis
run a loop n/2 times for each line; increment by 2 (1 to 3 to 5); ex. n = 9; 9/2 = 4
- print current line
- current value represents number of stars
- spaces to print before stars = n/2 decremented by 1 each iteration
then print middle amount of n stars
then repeat loop backwards decrementing
=end

def diamond(size)
  stars = 1
  spaces = size/2
  (size/2).times do
    puts " " * spaces + "*" * stars
    stars += 2
    spaces -= 1
  end
  (size/2 + 1).times do
    puts " " * spaces + "*" * stars
    stars -= 2
    spaces += 1
  end
end

diamond(5)