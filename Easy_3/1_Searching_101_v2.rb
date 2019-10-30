# 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, 11th, 12th, 13th, 14th, 15th, 16th, 17th, 18th, 19th, 20th, 21st, 22nd, 23rd, 24th, 25th, 26th, 27th, 28th, 29th, 30th
# 1st, 21st, 31st
# 2nd, 22nd, 32nd
# 3rd, 23rd, 33rd
# 4th - 20th

def suffix(num)
  ending = num.divmod(10)[1]
  if (4..20).include?(num)
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

def message(num)
  puts "==> Enter the #{num}#{suffix(num)} number:"
end

arr = []

1.upto(5) do |num|
  message(num)
  arr << gets.chomp.to_i
end

puts "Enter the last number:"
last = gets.chomp.to_i

if arr.include?(last)
  puts "The number #{last} appears in #{arr}."
else
  puts "The number #{last} doesn't appear in #{arr}."
end
