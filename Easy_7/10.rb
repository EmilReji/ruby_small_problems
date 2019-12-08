=begin
iinput: string with 2 or more space seperated words
output: string representing 2nd to last string

split string into ana rray of words and take index of -2 and return
=end

def penultimate(str)
  str.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
