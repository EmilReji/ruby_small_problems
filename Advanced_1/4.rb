=begin

=end

def transpose(matrix)
  result = []
  matrix[0].size.times { |_| result << []}

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

p new_matrix == [[1, 4, 3],
                 [5, 7, 9], 
                 [8, 2, 6]]
p matrix == [[1, 5, 8], 
             [4, 7, 2], 
             [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
