=begin
input: 2 arrays
output: 1 array

create a result array
iterate over one array
for each iteration, iterate over the other array
inside this, take the product of the two current numbers and add that to result
sort result and return
=end

def multiply_all_pairs(arr1, arr2)
  result = []

  arr1.each do |e1|
    arr2.each do |e2|
      result << e1 * e2
    end
  end

  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
