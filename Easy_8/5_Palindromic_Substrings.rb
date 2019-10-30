def is_palindrome?(str)
  str == str.reverse
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

def palindromes(str)
  substrings = substrings(str)
  substrings.select do |substring|
    is_palindrome?(substring) && substring.length > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]