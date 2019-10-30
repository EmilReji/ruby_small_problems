=begin
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the 
substring begins. This means that all substrings that start at 
position 0 should come first, then all substrings that start at 
position 1, and so on. Since multiple substrings will occur at 
each position, the substrings at a given position should be returned 
in order from shortest to longest.

You may (and should) use the substrings_at_start method you 
wrote in the previous exercise:
=end

def substrings_at_start(str)
  substrings = []
  str.chars.each_with_index do |_, index|
    substrings << str[0..index]
  end
  substrings 
end

def substrings2(str)
  substrings = []
  str.chars.each_with_index do |_, index|
    substrings << substrings_at_start(str[index..-1])
  end
  substrings.flatten
end

def substrings(str)
  substrings = []
  start_index = 0
  
  loop do
    break if start_index >= str.length
    end_index = start_index
    
    loop do
      break if end_index >= str.length
      substrings << str[start_index..end_index]
      end_index += 1
    end
    
    start_index += 1
  end
  
  substrings
end

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]