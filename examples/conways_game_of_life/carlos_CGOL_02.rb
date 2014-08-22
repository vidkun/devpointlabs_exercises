# carlos_CGOL_02.rb
# 02. Insert random elements into the Matrix

class Matrix 

  def initialize
    @rows = 10
    @columns = 10
    @matrix_data = [] # Initialize just to know we will use this variable
    (1..@rows).each do |row_number|
      new_row = []
      (1..@columns).each do |column_number|
        new_row << rand(9) # Random of 0 through 9
      end
      @matrix_data << new_row
    end
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
