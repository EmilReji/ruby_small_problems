=begin
input is a number representing year; assume year range is 1 or greater for now
output is a string representing century

find century by running divmod 100
1st element is the century if 2nd number is 0
1st element + 1 is centry if 2nd number is not 0
then generate suffix from seperate method and add to year

additons:
needed to edit suffix method to account for the fact that numbers
may come in that are greater than 99 and also end in say 13 (or anything from 4 to 20)
fixed by converting number to a string and taking last 2 digits
=end

def suffix(num)
  ending = num.divmod(10)[1]

  if ('4'..'20').include?(num.to_s[-2..-1])
    'th'
  elsif ending == 1
    'st'
  elsif ending == 2
    'nd'
  elsif ending == 3
    'rd'
  else
    'th'
  end
end


def century(year)
  if year.divmod(100)[1] == 0
    cent = year.divmod(100)[0]
  else
    cent = year.divmod(100)[0] + 1
  end

  cent.to_s + suffix(cent)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
