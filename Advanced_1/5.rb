=begin
input: matrix
output: new matrix
rotate 90 degrees
each value in the 1st row aka sub array in input matrix becomes the last element in eahc of the sub arrays in the result matrix
... 2nd row ... 2nd to last element ...
etc.
same for any sized array

algorithm:
iterate over matrix with element being each row
- iterate over the row with each element being a integer; need index
  - use index for row in result; then unshift the val into that array
=end

def rotate90(matrix)
  result = []
  matrix[0].size.times { |_| result << [] }

  matrix.each do |row|
    row.each_with_index do |val, idx|
      result[idx].unshift(val) 
    end
  end

  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

p new_matrix1 = rotate90(matrix1)
p new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], 
                  [9, 7, 5], 
                  [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
