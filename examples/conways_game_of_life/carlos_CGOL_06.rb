# carlos_CGOL_06.rb
# 06. Apply Rules of Conways game of life - Part 1
#   Count living cells surrounding each element in matrix

require 'pry-debugger'

class Matrix 

  VALUES = ['O', ' ']
  POSITIONS_TO_TEST = [
    [-1,-1], [-1, 0], [-1, 1], # Top Row
    [ 0,-1], [ 0, 0], [ 0, 1], # Middle Row
    [ 1,-1], [ 1, 0], [ 1, 1]  # Bottom Row
  ]

  def initialize(rows, columns)

    @rows = self.validate_size(rows, 30)
    @columns = self.validate_size(columns, 100)
    @matrix_data = [] # Initialize just to know we will use this variable
    # binding.pry
  end

  def validate_size(size_param, max_value)
    if size_param > max_value
      max_value
    elsif size_param < 10
      10
    else 
      size_param
    end
  end

  def is_cell_alive?(x,y)
    if @matrix_data[x] && @matrix_data[x][y]
      @matrix_data[x][y] == 'O' ? true : false 
    else
      false
    end
  end

  def count_surrounding_living_cells
    puts ''
    puts 'Results Results Results Results Results Results '
    (0..@rows-1).each do |row_number|
      (0..@columns-1).each do |column_number|
        surrounding_living_cells = 0
        # Iterating through each cell, so now we have to check the surrounding ones
        for adjecent_position in POSITIONS_TO_TEST
          # binding.pry
          # Get the row coordinate adjacent to the cell we are testing
          row_to_test = row_number + adjecent_position.first 
          # Get the column coordinate adjacent to the cell we are testing
          column_to_test = column_number + adjecent_position.last

          # If the row is out of bounds, then there is nothing to test
          next if self.index_out_of_bounds?(row_to_test, @rows-1)
          # If the column is out of bounds, then there is nothing to test
          next if self.index_out_of_bounds?(column_to_test, @columns-1)
          # We need to check adjacent cells only so it needs to be skipped
          next if adjecent_position.first == 0 && adjecent_position.last == 0 ||
                  row_number == row_to_test && column_number == column_to_test

          # binding.pry
          # This is the adjacent cell's coordinates row_to_test, column_to_test
          # Test if the adjacent cell is alive and if so, add to the count of
          # surrounding cells that are alive
          if self.is_cell_alive?(row_to_test, column_to_test)
            # binding.pry
            surrounding_living_cells += 1 
          end
        end
        print surrounding_living_cells
      end
      puts ""
    end
  end

  def index_out_of_bounds?(position, upper_bound)
    return (position < 0 || position > upper_bound)
  end

  def test_current_cells
    puts ''
    puts "TEST TEST TEST TEST TEST TEST TEST"
    (0..@rows-1).each do |row_number|
      (0..@columns-1).each do |column_number|
        print self.is_cell_alive?(row_number,column_number) ? 'T' : 'F'
      end
      puts ''
    end
    puts ''
  end

  def fill_with_data
    srand(333)
    @matrix_data = []
    (1..@rows).each do |row_number|
      new_row = []
      (1..@columns).each do |column_number|
        new_row << VALUES[rand(2)] # Random of 0 or 1
      end
      @matrix_data << new_row
    end
  end

  def display
    @matrix_data.each do |row| 
      row.each do |column|
        print column
      end 
      puts ""
    end
  end
end

class Menu
  def clear_screen
    system("clear")
    # print "\e[2J\e[f" # A more hardcore way to clear the screen
  end

  def display
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "Creating a Random Matrix of n x N"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  end

  def get_dimensions
    print 'Please enter the number of rows: '
    rows = gets.chomp.to_i
    print 'Please enter the number of columns: '
    columns = gets.chomp.to_i
    return [rows, columns]
  end

  def prompt
    puts 'Would you like another one?'
    print '(y/n) :'
    answer = gets.chomp().to_s.downcase
    return answer
  end
end 

the_menu = Menu.new
loop do
  the_menu.clear_screen
  sleep(0.1)
  the_menu.display

  dimensions = the_menu.get_dimensions
  my_matrix = Matrix.new(dimensions.first, dimensions.last)
  my_matrix.fill_with_data
  my_matrix.display
  my_matrix.count_surrounding_living_cells
  my_matrix.test_current_cells
  loop do
    retry_answer = the_menu.prompt
    if retry_answer == 'y'
      break
    elsif retry_answer == 'n'
      exit
    end
  end
end
