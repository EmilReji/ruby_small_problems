=begin
merge sort iterative solution

iterate from 1 to arr.size/2; double each time; so 1, 2, 4, 8, etc. until arr.size/2 hit
- given the num (starts with 1), then iterate over the arr
  - take a grouping of said number from array (since 1 is start, take first element) and put in an array; then add to result array
  - repeat process until entire array contains N sub-arrays each with one element
- on 2nd iteration, use 2 as num
  - take 1st and 2nd value (including arr)  and put in sub-array
  - repeat till 2nd nested arr created
  - if odd number of elements, means final element will just have one element with 2 arr bracket's around it
- repeat until arr.size/2 is hit
- if size is even (ex. 6) then stop at 3
- if size is odd, same stop at 3

once array with sub-array's nested is created

=end

=begin
given array, run each_slice(2)
for each slice, run merge on slice[0] and slice[1]
then run each_slice(4)
for each slice, run merge on slice[0..(4/2-1)] and slice[{4/2)..-1]
then double again and repeat
keep going until that number is greater than or equal to arr.size
=end

require "./7"
#require_relative "7"

def merge_sort(arr)
  return arr if arr.empty?

  n = 2
  
  while(n <= 2**Math.log2(arr.size).ceil)
    result = []
    arr.each_slice(n) do |slice|
      slice1 = slice[0..((n/2)-1)] || []
      slice2 = slice[(n/2)..-1] || []
#      p "slice1: #{slice1}"
#      p "slice2: #{slice2}"
      result << merge(slice1, slice2)
#      p result
#      puts 
    end
    arr = result.flatten
    n *= 2
  end

  result.flatten
end

p merge_sort([])

p merge_sort([9, 5, 7, 1, 8])
p "2nd example: "
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51])

p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


p merge_sort([5, 3]) == [3, 5]

p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]

p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

p merge_sort([100, 54, 51, 46, 43, 37, 35, 25, 23, 22, 18, 15, 9, 7, 6, 5, 3, 1]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54, 100]

#p merge_sort((1..1000).to_a.reverse)
