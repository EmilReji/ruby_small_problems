=begin
input: two arrays, each of which has been seperatly sorted
output: one array that should als be sorted; has everything from 2 inputs
The final array shouldn't ever be sorted; needs to be constructed one element at a time and end up sorted by default
The inputted arrays shouldn't be mutated

Create a result array that is empty
Create an arr1 index and an arr2 index with values of 0
Run a loop that breaks when the size of the result is == arr1.size + arr2.size
In loop, compare arr1[idx1] to arr2[idx2]
If arr1[idx1] is smaller, then copy that val to the result array and increment idx1
Go to next iteration of loop
Once loop breaks, input arrays should remain non-mutated and result array should have all values in order 
=end

$iterations = 0

def merge(arr1, arr2)
  result = []
  idx1 = 0
  idx2 = 0

  while result.size != arr1.size + arr2.size
    $iterations += 1
    if arr1[idx1].nil?
      result += arr2[idx2..-1] 
    elsif arr2[idx2].nil?
      result += arr1[idx1..-1]
    elsif arr1[idx1] <= arr2[idx2]
      result << arr1[idx1]
      idx1 += 1
    else
      result << arr2[idx2]
      idx2 += 1
    end
  end  

#  p $iterations
  $iterations = 0 

  result
end

def merge_r(arr1, arr2)
  $iterations += 1
  return arr1 + arr2 if [arr1, arr2].any?(&:empty?)
  if arr1.first <= arr2.first
    arr1.take(1) + merge(arr1.drop(1), arr2)
  else
    arr2.take(1) + merge(arr1, arr2.drop(1))
  end
end

=begin
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
#p $iterations
#$iterations = 0
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
#p $iterations
#$iterations = 0
p merge([], [1, 4, 5]) == [1, 4, 5]
#p $iterations
#$iterations = 0
p merge([1, 4, 5], []) == [1, 4, 5]
#p $iterations
#$iterations = 0
p merge([2, 2], [1, 1, 3, 6, 7, 8, 9, 10]) == [1, 1, 2, 2, 3, 6, 7, 8, 9, 10]
#p $iterations
#$iterations = 0
p merge([1, 1, 3, 6, 7, 8, 9, 10], [2, 2]) == [1, 1, 2, 2, 3, 6, 7, 8, 9, 10]
#p $iterations
#$iterations = 0
=end
