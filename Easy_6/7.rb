=begin
input: an array
output: another array

create a result array
take the values from 0 to arr.size-1/2 and put into one array; add to results
repeat but with arr.size/2 to -1
return final array
=end

def halvsies(arr) 
  [arr[0..(arr.size-1)/2], arr[(arr.size+1)/2..arr.size-1]]
end


def halvsies1(arr)
  return [[], []] if arr.empty?
  size = arr.size
  size += 1 if arr.size.odd?
  half = size/2
  arr = arr.each_slice(half).to_a
  arr << [] if arr.size == 1
  arr
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([1, 5, 2, 4, 3])
p halvsies([5]) == [[5], []]
p halvsies([5])
p halvsies([]) == [[], []]
p halvsies([])
