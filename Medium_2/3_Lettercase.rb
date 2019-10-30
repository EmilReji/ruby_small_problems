=begin
In the easy exercises, we worked on a problem where we had 
to count the number of uppercase and lowercase characters, 
as well as characters that were neither of those two. 
Now we want to go one step further.

Write a method that takes a string, and then returns a hash 
that contains 3 entries: one represents the percentage of 
characters in the string that are lowercase letters, one 
the percentage of characters that are uppercase letters, and 
one the percentage of characters that are neither.

You may assume that the string will always contain at 
least one character.

Algorithm:
Given string
Create 3 variables representing # of uppercase, lowercase, and neithers
Iterate over string
Increment correct variable based on current character's value
Use ord value to 
=end

def get_percent(num, den)
  percent = (num * 100.0) / den
  percent.round(2)
end

def letter_percentages(str)
  lower = 0
  upper = 0
  non = 0
  str.chars.each do |char|
    if (97..122).include?(char.ord)
      lower += 1
    elsif (65..90).include?(char.ord)
      upper += 1
    else
      non += 1
    end
  end
  den = str.length
  {lowercase: get_percent(lower, den), uppercase: get_percent(upper, den), neither: get_percent(non, den) }
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}
