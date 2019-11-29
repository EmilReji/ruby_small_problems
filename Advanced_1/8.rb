=begin
input: array
output: new array with values sorted
use recursion
given an array, split into two sub-arrays; repeat process until you have a bunch of individual values in each nested array
then work back up and merge the individual arrays together (will sort); keep going up until final sorted array is returned

setup base case of when arr.size <= 1; just return arr directly
if arr.size > 1, then need to split array into halves
run merge_sort on each recursively; when they return should have two
sorted halves; combine these using merge method

efficiency:
(N*2 - 1) method calls seem to be required when N elements passed in
1000
500 500
250 250 250 250
125 125 125 125 125 125 125 125
(62 63) * 8
(31 31 31 32) * 8
(15 16 15 16 15 16 16 16) * 8
16 * 8
32 * 8
64 * 8
...

4
2 2 
1 1 1 1
Calls: 7

Like a binary tree; every time the N input doubles, the number of calls increases by 1

https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/
https://brilliant.org/wiki/merge/

Merge sort takes O(N Log N)
The Log N part is for the merge_sort recursive calls since as N increases, the number of calls needed decreases significantly.
The N part is for the actual merge method since as N increases, the number of elements to combine increases linearly.
=end

require "./7"
#require_relative "7"

$i = 0

def merge_sort(arr)
  $i += 1
  if arr.size <= 1
    return arr
  else
    half1 = merge_sort(arr[0..(arr.size/2) - 1])
    half2 = merge_sort(arr[(arr.size/2)..-1])
    merge(half1, half2)
  end  
#  merge([1, 5], [7, 9]) 
end 

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p $i # 7
$i = 0

p merge_sort([5, 3]) == [3, 5]
p $i # 9
$i = 0

p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p $i # 3
$i = 0

p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p $i # 13
$i = 0

p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
p $i # 33
$i = 0

p merge_sort([100, 54, 51, 46, 43, 37, 35, 25, 23, 22, 18, 15, 9, 7, 6, 5, 3, 1]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54, 100]
p $i # 35
$i = 0

p merge_sort((1..1000).to_a.reverse)
p $i # 1999
