# carlos_conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix
# 03. Redisplay a new Matrix if user wants to
# 04. Generate a Matrix of max(100) x max(30)
#     With values only being ' ' and 'O'
# 05. Test is cells are alive or not
# 06. Apply Rules of Conways game of life
#   Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with 'O' at the beggining.
# Extra 04. Move classes to files of their own

class Matrix 

  def initialize
    # @rows = 20
    # @columns = 20
    @matrix_data = [
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0],
      [1,2,3,4,5,6,7,8,9,0]
    ]
  end

  def display
    # puts @matrix_data # Displays everything split by new lines
    @matrix_data.each do |row| 
      row.each do |column|
        print column
      end 
      puts ""
    end
  end

end

my_matrix = Matrix.new
my_matrix.display