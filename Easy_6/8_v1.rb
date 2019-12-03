def find_dup(arr)
  count = Hash.new(0)
  arr.each do |val|
    count[val] += 1
    return val if count[val] > 1
  end
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
Time to run: 5.5517e-05
true
Time to run: 8.1406e-05
true
Time to run: 0.109574294
true
Time to run: 0.242405245
true
Time to run: 0.411204891
true
Time to run: 0.523957305
true
Time to run: 0.620171073
=end
