=begin
Write a method that returns a list of all substrings of a 
string that start at the beginning of the original string. 
The return value should be arranged in order from shortest 
to longest substring.
=end

def substrings_at_start(str)
  substrings = []
  str.chars.each_with_index do |_, index|
    substrings << str[0..index]
  end
  substrings 
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']