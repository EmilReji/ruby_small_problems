=begin
replace all non alphabetic chars with spaces
if more than one non alphabetic in a row, replace group with one space
=end

def cleanup(str)
  str.gsub(/[^a-zA-Z]+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
