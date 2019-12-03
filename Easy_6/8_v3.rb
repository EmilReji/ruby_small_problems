def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

def difference
  before = Time.now
  yield
  after = Time.now
  puts "Time to run: #{after - before}"
end

difference { p find_dup([1, 5, 3, 1]) == 1 }
difference { p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73 }
difference { p find_dup((1..100000).to_a.shuffle + [1]) == 1 }
difference { p find_dup((1..200000).to_a.shuffle + [1]) == 1 }
difference { p find_dup((1..300000).to_a.shuffle + [1]) == 1 }
difference { p find_dup((1..400000).to_a.shuffle + [1]) == 1 }
difference { p find_dup((1..500000).to_a.shuffle + [1]) == 1 }

=begin
true
Time to run: 5.9666e-05
true
Time to run: 0.00014746
true
Time to run: 109.993905153
true
Time to run: 173.051309511
true
Time to run: 205.190579468
true
Time to run: 1131.2145254
^CTraceback (most recent call last):
	6: from 8_v3.rb:27:in `<main>'
	5: from 8_v3.rb:7:in `difference'
	4: from 8_v3.rb:27:in `block in <main>'
	3: from 8_v3.rb:2:in `find_dup'
	2: from 8_v3.rb:2:in `find'
	1: from 8_v3.rb:2:in `each'
8_v3.rb:2:in `block in find_dup': Interrupt
=end
