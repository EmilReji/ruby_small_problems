=begin
input: string
output: new string
all words need to have 1st letter capitalized and rest lowercased
if word is surrounded by quotes, then whole word is lowercased since first isn't a letter

create an array of words by splitting on spaces
then on each array, run upcase on the 1st letter and downcase on rest
then join these words into a new string and return
=end

def word_cap(str)
  str.split(' ').map do |word|
    word[0].upcase + word[1..-1].downcase
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
