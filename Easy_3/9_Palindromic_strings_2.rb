=begin
Write a method that returns true if the string passed as an argument 
is a palindrome, false otherwise. A palindrome reads the same forward 
and backward. For this exercise, case matters as does punctuation and spaces.

Write another method that returns true if the string passed as an argument is a palindrome, 
false otherwise. This time, however, your method should be case-insensitive, and it should 
ignore all non-alphanumeric characters. If you wish, you may simplify things by calling 
the palindrome? method you wrote in the previous exercise.
=end

def palindrome?(str)
  str == str.reverse    
end

def real_palindrome2?(str)
  str = str.downcase
  str = str.chars.select do |char| 
    ('A'..'Z').include?(char) || ('a'..'z').include?(char) || (1..9).include?(char) 
  end.join('')
  palindrome?(str)
end

def real_palindrome?(str)
  str = str.downcase.gsub(/[^a-zA-Z\d]/, '')
  puts str
  str == str.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

