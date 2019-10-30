=begin
Write a method that returns true if its integer argument is palindromic, 
false otherwise. A palindromic number reads the same forwards and backwards.
=end

def palindromic_number2?(num)
  num.to_s == num.to_s.reverse 
end

def num_to_str(num)
  arr = []
  loop do
    break if num <= 0
    arr << num.divmod(10)[1]
    num = num.divmod(10)[0]
  end
  arr
end

def palindromic_number?(num)
  num_str = num_to_str(num)
  num_str == num_str.reverse 
end
=begin
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

p palindromic_number?(00500)
=end
p num_to_str(12345)
p num_to_str(00500)
puts 00500.to_s