=begin
convert string to an array of words using split(' ')
on each word, iterate over that to find first character that is in A..Z or a..z; capitalize that; if not in that, then downcase
return that word
return combo of words using join(' ')`

mistake: don't need to capitalize a word unless the first character is a alphabetic character; so "quoted" remains as such
=end

def word_cap(str)
  str.split(' ').map do |word| 
    flag = true

    word.split('').map do |char|
      if flag && (('A'..'Z').include?(char) || ('a'..'z').include?(char))
        char = char.upcase
        flag = false
      else
        char = char.downcase
      end
      p char
      char
    end.join('')
  end.join(' ') 
end

#p word_cap('four score and seven') 
#p word_cap('the javaScript language') 
p word_cap('this is a "quoted" word')

#p word_cap('four score and seven') == 'Four Score And Seven'
#p word_cap('the javaScript language') == 'The Javascript Language'
#p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
