=begin
retrieve middle word of a sentence
input: anything

first check if string, otherwise return nil
if no words, return empty string ''
if one word, return that single word
if even number of words, return the size/2 index word
- if 2, then rethrn index 1 or 2nd word
- if 6, then return index 3 or 4th word
if odd number of words, return the size/2 index word
- if 3, then return index 1 or 2nd word
- if 7, then return index 3 or 4th word
=end

def middle(str)
  words = str.split(' ')
  return '' if words.empty?
  words[words.size/2]
end

p middle('     ') == ''
p middle('Test') == 'Test'
p middle('Test One Two') == 'One'
p middle('Test One Two Three') == 'Two'
