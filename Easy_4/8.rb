=begin
input: a string; will be a non-negative integer
output: corresponding integer

setup a mapping from character '0' to '9' to correspondign numbers
a constant hash
then iterate from left to right on the string
on each iteration, take the current character and convert ot number using mapping
then multiply by 10^(size - index - 1) before adding to total
once done iterating, return total
=end

MAPPING = {
            '0' => 0,
            '1' => 1,
            '2' => 2,
            '3' => 3,
            '4' => 4,
            '5' => 5,
            '6' => 6,
            '7' => 7,
            '8' => 8,
            '9' => 9,
          }

def string_to_integer(str)
  num = 0

  str.chars.each_with_index do |char, index|
    num += MAPPING[char] * (10 ** (str.size - index - 1))
  end  

  num
end

def string_to_signed_integer(str)
  if str[0] == '-'
    string_to_integer(str[1..-1]) * -1
  elsif str[0] == '+'
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
