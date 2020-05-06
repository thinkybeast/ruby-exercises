
=begin
[
0: [0, 1, 2]
1: [0, 1, 2]
2: [0, 1, 2]
]

[
0: [a, a, a]
1: [b, b, b]
2: [c, c, c]
]

[
0: [a, b, c]
1: [a, b, c]
2: [a, b, c]
]


=end 
  
def transpose(matrix)
  new_matrix = [
    [],
    [],
    []
  ]

  0.upto(2) do |idx|
    new_matrix.each_with_index do |inner, i|
      inner[idx] = matrix[idx][i]
    end
  end

  new_matrix
end

def transpose!(matrix)

  2.times do |row|
    (row+1).upto(2) do |col|
      matrix[row][col], matrix[col][row] = matrix[col][row], matrix[row][col]
    end
  end

  # matrix[0][1], matrix[1][0] = matrix[1][0], matrix[0][1]
  # matrix[0][2], matrix[2][0] = matrix[2][0], matrix[0][2]
  # matrix[1][2], matrix[2][1] = matrix[2][1], matrix[1][2]

end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose!(matrix)

p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


