=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.
=end

def reverse_sentence2(str)
  str.split(' ').reverse.join(' ')
end

def reverse_sentence(str)
  words = str.split(' ')
  left = 0
  right = -1
  loop do
    break if left >= words.length/2
    temp = words[left]
    words[left] = words[right]
    words[right] = temp
    left += 1
    right -= 1
  end
  words.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'