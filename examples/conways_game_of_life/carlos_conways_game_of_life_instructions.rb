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

require 'pry-debugger'

class Matrix 

  VALUES = ['O', ' ']
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

  def fill_with_data
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
    # puts @matrix_data # Displays everything split by new lines
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
    puts "Creating a Random Matrix of 10 x 10"
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
  loop do
    retry_answer = the_menu.prompt
    if retry_answer == 'y'
      break
    elsif retry_answer == 'n'
      exit
    end
  end
end
