=begin
Fibonacci Numbers (Last Digit):

=end

def fibonacci_last2(num)
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
      fib_3 = (fib_1 + fib_2) % 10
      fib_1 = fib_2
      fib_2 = fib_3
    end
  end
  
  fib_3.to_s[-1].to_i
end

def fibonacci_last(int)
  sequence = []
  first_last = [1, 1] # [fib(1), fib(2)]

  while !sequence.include?(first_last) do
    sequence << first_last
    first_last = [first_last.last, (first_last.first + first_last.last) % 10]
  end

  period_start_index = sequence.find_index(first_last)
  periodicity = sequence.size - sequence.find_index(first_last)

  # two is subtracted from the method arg below to match it to the index in sequence
  sequence[((int - 2 - period_start_index) % periodicity) + period_start_index].last
end

def last_digit(nth)
 endings = 0.upto(60).map { |num| fibonacci_last2(num) }
 endings[nth % 60]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745) # -> 5

p last_digit(12345678998774503434587943598734578934587943578943589734789534897534589734589734578943589734598784578458745814) == 7
