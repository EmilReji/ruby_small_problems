=begin
Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
=end

#(1..99).each { |num| puts num if num.odd? }
puts (1..99).select { |num| num.odd? }
