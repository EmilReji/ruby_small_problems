=begin
input: num representing size of fib num
output: num representing index of fib num that is first to have size == input val

start with a fib_num_1 of 0 and a fib_num_2 of 1 and a size of fib_num.size
also set index to 1
run a loop that breaks when the size of fib_num_2 == input
fib_num_3 = fib_num_1 + fib_num_2
fib_num_2 = fib_num_3
fib_num_1 = fib_num_2
increment index by i
repeat till fib_num_2 == input
return index

works but as number of digits goes above 4 digits, takes several seconds at least
see medium exercises
=end

require 'pry'

def time
  before = Time.now
  yield
  after = Time.now
  diff = after - before
  puts "Took #{diff} seconds."
end

def find_fibonacci_index_by_length(num)
  fib_num_1 = 0
  fib_num_2 = 1
  index = 1

  while (fib_num_2.to_s.size != num)
    fib_num_3 = fib_num_1 + fib_num_2
    fib_num_1 = fib_num_2
    fib_num_2 = fib_num_3
    index += 1 
  end

  index
end

p find_fibonacci_index_by_length(1) == 1
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
time { p find_fibonacci_index_by_length(1000) == 4782 }
time { p find_fibonacci_index_by_length(10000) == 47847 }

