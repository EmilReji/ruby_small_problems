=begin
In the previous exercise, we developed a procedural method for 
computing the value of the nth Fibonacci numbers. This method was 
really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the 
last digit of the nth Fibonacci number.


=end

def fibonacci_last2(n)
  if n < 0
    return "Invalid num."
  elsif n == 0
    return 0
  elsif n <= 2
    return 1
  end  
  one = 1
  two = 1
  three = one + two
  i = 3
  loop do
    #p "loop start"
    #p "One: #{one} Two: #{two} Three: #{three} i: #{i}"
    return three.divmod(10)[1] if i > n
    three = one + two
    one = two
    two = three
    i += 1
    #p "One: #{one} Two: #{two} Three: #{three} i: #{i}"
  end
end
#p fibonacci_last(4) 
#16.times { |num| p "#{num} #{fibonacci_last(num)}" }


def fibonacci_last1(n)
  if n < 0
    return "Invalid num."
  elsif n == 0
    return 0
  elsif n <= 2
    return 1
  end 
  one = 1
  two = 1
  three = one + two
  i = 3
  loop do
    return three.divmod(10)[1] if i > n
    three = one + two
    one = two
    two = three
    i += 1
  end
end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    p "loop"
    p last_2
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
    p last_2
  end

  last_2.last
end

fibonacci_last(15)

=begin
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
=end