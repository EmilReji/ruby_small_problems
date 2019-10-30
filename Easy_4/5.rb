def multisum2(num)
  sum = 0

  1.upto(num) do |curr_num|
    sum += curr_num if curr_num % 5 == 0 || curr_num % 3 == 0
  end

  sum
end

def multisum(num)
  arr = (1..num).to_a
  arr.select! { |curr_num| curr_num % 5 == 0 || curr_num % 3 == 0 }
  arr.reduce(&:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
