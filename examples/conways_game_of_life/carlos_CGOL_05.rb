# carlos_CGOL_05.rb
# 05. Test is cells are alive or not

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

  def is_cell_alive?(x,y)
    if @matrix_data[x] && @matrix_data[x][y]
      @matrix_data[x][y] == 'O' ? true : false 
    else
      false
    end
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
