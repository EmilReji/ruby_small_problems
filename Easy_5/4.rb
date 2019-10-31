=begin
input: string
output: string
split input string into array of words
for each string in the array, swap the 1st character and last
=end

def swap(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
