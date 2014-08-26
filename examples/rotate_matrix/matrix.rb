# write ruby method that will rotate a matrix 90 degrees counter-clockwise (or π/2 radians).

# Ex:

# 0 0 0 0
# 0 X 0 0
# X X X 0
# 0 0 0 0

# 0 0 0 0
# 0 0 X 0
# 0 X X 0
# 0 0 X 0

class Matrix

  # Method 1
  def self.rotate_ryan(matrix)
    # get dimensions
   rows = matrix.size
   columns = matrix[0].size

   # create new array with swapped dimensions, and reverse the values
   rotated = Array.new(columns) do |c| 
    Array.new(rows) do |r| 
      matrix[r][columns - c -1 ] 
    end
   end
  end

  # Method 2
  def self.rotate_carlos(matrix)

    row_length = matrix.length
    col_length = matrix.first.length
    new_matrix = []
    (col_length-1).downto(0).each do |col_index|
      new_row = []
      (0..row_length-1).each do |row_index|
        new_row << matrix[row_index][col_index]
      end
      new_matrix << new_row
    end
    new_matrix
  end

  # Method 3
  def self.rotate(matrix)
    matrix.transpose.reverse
  end

end
