
#Ask user what they wanna do 
#1. Addition
#2. Subtraction
#3. Multiplication
#4. Division

#case to taken them to the right way

#def for each action
 # 1. whats is your first number 
 #number1 = gets/ second number number 2 = gets
 #puts number1 + number 2
class KathCalculator 
  #def initialize 
   
  #@last_result = 0

    #menu
  #end
  
  def menu 
    puts "What would you like to do?"
    puts "1. addition"
    puts "2. subtraction"
    puts "3. multiplication"
    puts "4. division"
    puts "5. square_root"
    puts "6. exponents"
    puts "7. EXIT"


    print "Enter the number you wanna do: "
    input = gets.chomp

    case(input)
      when '1'
        addition
      when '2'
        subtraction
      when '3'
        multiplication
      when '4'
        division
      when '5'
        square_root
      when '6'
        exponents
      when '7'  
        `say "See you next time!"`
        exit!(true)
      else
        puts "Only options: 1, 2, 3, 4, 5 y 6.\n"  
    end 
  end


  def addition
    pick_numbers
    
    puts "Result = #{@number1 + @number2}"
  end

  def subtraction
    pick_numbers
    
    puts "Result = #{@number1 - @number2}"
  end 

  def multiplication
    pick_numbers

    
    puts "Result = #{@number1 * @number2}"
  end

  def division
    pick_numbers

    puts "Result = #{@number1 / @number2}"
  end

  def square_root
    pick_numbers_square_root
    
    puts "Result = #{Math.sqrt(@number3)}"
  end

  def exponents
    puts " (first number) ^ (second number)"
    pick_numbers

    puts "Result = #{@number1 ** @number2}"
  end
  
  def pick_numbers_square_root
    puts "Your number"
    @number3 = gets.chomp.to_i
  end


  def pick_numbers
    puts "Your first number"
    @number1 = gets.chomp.to_i
    puts "Your second number"
    @number2 = gets.chomp.to_i
  end


end
calculator = KathCalculator.new

loop do 
  calculator.menu
end

