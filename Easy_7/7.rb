=begin
input: array of integers
output: an multiplicative average value (float) rounded to 3 digits


=end

def show_multiplicative_average(arr)
  m_avg = arr.reduce(:*).to_f/arr.size
  "The result is #{format('%.3f', m_avg)}"
end

p show_multiplicative_average([3, 5])
p "The result is 7.500"

p show_multiplicative_average([6])
p "The result is 6.000"

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
p "The result is 28361.667"
