=begin
Fibonacci Numbers (Recursion)
Input: num
Output: the actual fib number that has the index of the input
If input num is less than 0 return nil, if equal to 0, return 0, if equal to 1 or 2, return 1
If greater than 2, return fib(num - 1) + fib(num - 2)
=end

def time
  before = Time.now
  yield
  after = Time.now
  diff = after - before
  puts "Took #{diff} seconds."
end


def fibonacci(num)
  p "num #{num}"
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

def fibonacci_tail(nth, acc1, acc2)
  p "nth: #{nth} ; acc1 #{acc1} ; acc2 : #{acc2}"
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci_efficient(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci_efficient(5) # calls method 4 times
=begin
"nth: 5 ; acc1 1 ; acc2 : 1"
"nth: 4 ; acc1 1 ; acc2 : 2"
"nth: 3 ; acc1 2 ; acc2 : 3"
"nth: 2 ; acc1 3 ; acc2 : 5"
5
=end
p fibonacci(5) # calls method 9 times
=begin
9 actual calls of fib method
fib5
fib4            fib3
fib3      fib2  fib2  fib1
fib2 fib1 1     1     1
1 1 1 1 1 = 5
=end

p fibonacci_efficient(10) # calls method 9 times
p fibonacci(10) # calls method 109 times


#time { p fibonacci_efficient(35) }
#time { p fibonacci(35) }

#p fibonacci(1) == 1
#p fibonacci(2) == 1
#p fibonacci(3) == 2
#p fibonacci(4) == 3
#p fibonacci(5) == 5
#p fibonacci(12) == 144
#p fibonacci(20) == 6765
