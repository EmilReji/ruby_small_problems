=begin
Fibonacci Numbers (Recursion)
Input: num
Output: the actual fib number that has the index of the input
If input num is less than 0 return nil, if equal to 0, return 0, if equal to 1 or 2, return 1
If greater than 2, return fib(num - 1) + fib(num - 2)
=end

def fibonacci(num)
  if num < 0
    fib_num = nil
  elsif num == 0
    fib_num = 0
  elsif num <= 2
    fib_num = 1
  else
    fib_num = fibonacci(num - 1) + fibonacci(num - 2)
  end

  fib_num
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
