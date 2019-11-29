=begin
set fib_1 and fib_2 to 1; set fib_3 to nil
check if number < 0, return nil; if == 0, return 0, if 1 or 2, return 1
run a loop the number of times of the input - 2
set fib_3 = fib_1 + fib_2
set fib_1 = fib_2
set fib_2 = fib_3
return fib_3
=end

def fibonacci(num)
  fib_1 = 1
  fib_2 = 1
  
  if num < 0
    fib_3 = nil
  elsif num == 0
    fib_3 = 0
  elsif num <= 2
    fib_3 = 1
  else
    (num - 2).times do |_|
      fib_3 = fib_1 + fib_2
      fib_1 = fib_2
      fib_2 = fib_3
    end
  end
  
  fib_3
end

p fibonacci(20)
p 6765
p fibonacci(100)
p 354224848179261915075
p fibonacci(100_001) # => 
p "4202692702.....8285979669707537501"
