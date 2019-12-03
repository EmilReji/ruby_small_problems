
def find_dup(arr)
  arr.each do |val|
    return val if arr.count(val) != 1
  end
  nil
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
Time to run: 5.5036e-05
true
Time to run: 0.000152942
true
Time to run: 144.259585992
true
Time to run: 155.59841282
true
Time to run: 369.33175296
^CTraceback (most recent call last):
	5: from 8_v2.rb:31:in `<main>'
	4: from 8_v2.rb:12:in `difference'
	3: from 8_v2.rb:31:in `block in <main>'
	2: from 8_v2.rb:3:in `find_dup'
	1: from 8_v2.rb:3:in `each'
8_v2.rb:4:in `block in find_dup': Interrupt
=end
