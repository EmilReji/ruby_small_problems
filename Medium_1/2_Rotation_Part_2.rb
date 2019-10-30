=begin
Write a method that can rotate the last n digits of a number. For example:
Note that rotating just 1 digit results in the original number being returned.
You may use the rotate_array method from the previous exercise if you want. (Recommended!)
You may assume that n is always a positive integer.

convert number to string; convert string to array of chars
take the dig * -1 as index, save chars[index], then delete chars[index]
then add it to the end of the array
=end

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(num, dig)
  chars = num.to_s.chars
  index = dig * -1
  to_move = chars[index]
  chars.delete_at(index)
  chars << to_move
  chars.join('').to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
