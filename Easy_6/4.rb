=begin
input: array
output: same array but elements have been reversed in place
can't use Array#reverse or Array#reverse!

run a loop from 0 to arr.size/2 - 1
if even (ex. 6), then 0 to 2
if odd (ex. 7), then 0 to 2
swap the arr value at that index  with the arr val at arr.size - 1 - index
repeat till loop reaches end
return same array
=end

def reverse!(arr)
  (arr.size/2).times do |idx|
    arr[idx], arr[arr.size - 1 - idx] = arr[arr.size - 1 - idx], arr[idx]
  end 
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
