=begin
input: 2 arrays
output: 1 array
the result shouldn't have any duplicates even if there are duplicates in original
result implies that order matters; does it?
array sizes the same?

simplest solution:
create new array, add values from both to it, then run uniq and return
=end

def merge(arr1, arr2)
  result = []
  result << arr1
  result << arr2
  result.flatten.uniq  
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
