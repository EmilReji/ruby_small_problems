=begin
input: string
output: new string

setup an index
convert the string to an array of characters
map over it
if current index is even, then upcase; otherwise downcase
join string once done mapping and return
=end

def staggered_case2(str)
  index = 0

  str.chars.map do |char|
    char = char.upcase if index.even?
    char = char.downcase if index.odd?

    index += 1

    char
  end.join('') 
end

def staggered_case(str)
  upcase = true

  str.chars.map do |char|
    char = char.upcase if upcase
    char = char.downcase unless upcase

    upcase = !upcase

    char
  end.join('')
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
