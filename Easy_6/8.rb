=begin
input: array
output: the repeated value; integer
array is unordered
exactly one and only one value will occur twice

brute force:
iterate over array, for each value, get count of that element in said array; if count is not equal to 1, then return that value immediatly
this requires iteratinig over up to N elements
on each elemetn, need to get count; requires another iteration over up to N elements
O(N^2) worst case

alternative:
create an empty hash with default value of 0
key will be the number and value will be the count
iterate over the array; add 1 to the value for that number
then check if current count aka value is greater than 2; if so return
this requires iterating over up to N elements
O(N) worst case
also requires more space as an entire hash of up to N elements needed
however significantly less time required
=end

def find_dup2(arr)
  arr.each do |val|
    return val if arr.count(val) != 1
  end
  nil
end

def find_dup(arr)
  count = Hash.new(0)
  arr.each do |val|
    count[val] += 1
    return val if count[val] > 1
  end
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
p find_dup((1..100000).to_a.shuffle + [1]) == 1
