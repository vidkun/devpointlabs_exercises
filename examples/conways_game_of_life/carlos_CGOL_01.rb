# carlos_CGOL_01.rb
# 01. Display a Matrix of 10 x 10

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