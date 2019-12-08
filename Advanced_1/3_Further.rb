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

transpose in place
create swap method to simplfy; given two indexes swaps
3 swaps needed:
matrix[0][1] and matrix[1][0]
matrix[0][2] and matrix[2][0]
matrix[1][2] and matrix[2][1]
given solution
first loop covers 1st index of 0, 1, and 2
second loop covers 2nd index
when 1st is 0, 2nd can be 0, 1, or 2
when 1st is 1, 2nd can be 1 or 2
when 1st is 2, 2nd can be 2
the swaps where i and j are the same don't do anything as they are the same
the repeat swaps are avoided since the inner loop starts from i onwards
if inner loop wen from 0 to 2, then once 01 and 10 were swapped, eventaully would hit 10 at which point 10 and 01 would be swapped again
=end

def swap(arr, idx1, idx2)
  arr[idx1][idx2], arr[idx2][idx1] = arr[idx2][idx1], arr[idx1][idx2]
end

def transpose_mine!(matrix)
  swap(matrix, 0, 1) 
  swap(matrix, 0, 2)
  swap(matrix, 1, 2)
  matrix
end

def transpose_solution_1!(matrix)
  (0...matrix.size).each do |i|
    (i...matrix.size).each do |j|
      p matrix
      p "#{i} #{j}"
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      p matrix
    end
  end

  matrix
end

def transpose!(matrix)
  size = matrix.size

  size.times do |row|
    size.times do |col|
      p matrix
      p "row: #{row}, col: #{col}"
      matrix[col] << matrix[row].shift
      p matrix
      puts
    end
  end
  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose!(matrix)

p new_matrix
p new_matrix == [[1, 4, 3],
                 [5, 7, 9], 
                 [8, 2, 6]]
p matrix
p matrix == [[1, 4, 3],
             [5, 7, 9],
             [8, 2, 6]] 
