=begin
Transpose 3x3:
input: an array containing 3 sub arrays; each sub array conatains 3 integers
output: a similar array but with values transposed
transpose is when the rows and columns are exchanged
the 1st entire sub_array becomes the first value in each sub_array
the 2nd entire sub_array becomes the 2nd valeu in each sub_array
the last entire sub_array becomes the last valeu in each sub_array

create a result array
add emtpy sub arrays to that result based on how many sub-arrays the input has
run a loop iterating over the matrix
on each iterationm take the current row and iterate over that
on each row value, iterate over that with index
use that index on the result array and push the val onto the sub-array
finally return result matrix
=end

def transpose(matrix)
  result = []
  matrix.size.times { |_| result << []}
# doesn't work with non 3 by 3 since the number of arrays in result should be equal to number of elements in input matrix's single row (right now its using matrix's number of rows); 4.rb shows solution; use matrix[0].size.times
  matrix.each do |row|
    row.each_with_index do |val, index|
      result[index] << val
    end
  end

  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix
p new_matrix == [[1, 4, 3],
                 [5, 7, 9], 
                 [8, 2, 6]]
p matrix
p matrix == [[1, 5, 8], 
             [4, 7, 2], 
             [3, 9, 6]]
