# carlos_CGOL_03.rb
# 03. Redisplay a new Matrix if user wants to

class Matrix 

  def initialize
    @rows = 10
    @columns = 10
    @matrix_data = [] # Initialize just to know we will use this variable
  end

  def fill_with_data
    @matrix_data = []
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

  def prompt
    puts 'Would you like another one?'
    print '(y/n) :'
    answer = gets.chomp().to_s.downcase
    return answer
  end
end 


my_matrix = Matrix.new
the_menu = Menu.new
loop do
  the_menu.clear_screen
  sleep(0.1)
  the_menu.display

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
