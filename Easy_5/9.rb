def crunch2(str)
  squeezed_str = ''

  str.chars.each_with_index do |char, index|
    if char != str[index + 1]
      squeezed_str += char
    end 
  end

  squeezed_str
end

def crunch(str)
  str.gsub(/([0-9a-zA-Z])\1+/, '\1')
end
# https://icfun.blogspot.com/2008/07/regex-to-match-same-consecutive.html

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
