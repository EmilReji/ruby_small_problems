=begin
input: string
output: new string

Given string, convert to an array of characters
Iterate over this array; maybe use map
If between A..Z, then downcase
If between a..z, then upcase
If non alphanumeric, just return that character by default
ONce done iterating, join the array of new characters into a string and return
=end

def swapcase(str)
  str.chars.map do |char|
    if ('A'..'Z').cover?(char)
      char.downcase
    elsif('a'..'z').cover?(char)
      char.upcase
    else
      char
    end
  end.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
