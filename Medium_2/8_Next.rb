=begin
A featured number (something unique to this exercise) is an 
odd number that is a multiple of 7, and whose digits occur 
exactly once each. So, for example, 49 is a featured number, 
but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), 
and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and 
returns the next featured number that is greater than the argument. 
Issue an error message if there is no next featured number.

Input: integer
Output: integer (next featured number greater than argument)

is_featured_num?(num)
check if odd
check if multiple of 7
convert num to array of chars and check if length == arr.uniq.length
provided all are true, return true; else false

main method
given num, start with num + 1
check if is_featured_num?(num)
if true, return that num; otherwise increment by one

=end

def is_featured_num?(num)
  arr_chars = num.to_s.chars
  num.odd? && num % 7 == 0 && (arr_chars.length == arr_chars.uniq.length)
end

def featured(num)
  num += 1
  loop do
    return num if is_featured_num?(num)
    num += 1
    break if num > 100000000000
  end
  return 'error'
end

def featured_answer(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0
  # increments by one until you get the next number greater than input that is odd and evenly divisible by 7
  # this way the loop can increment by 14 rather than by 1
  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
    # 9_876_543_210 is the largest unique value; that is why it is used to determine errors
  end

  'There is no possible number that fulfills those requirements.'
end

=begin
p is_featured_num?(49)
p is_featured_num?(97)
p is_featured_num?(98)
p is_featured_num?(133)

=end
=begin
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
=end
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
