puts "/********************************************************/

Welcome would you like to use my calculator [yes] or [no]

/*********************************************************/"
answer = gets.chomp()
if answer == "no" then continue = false
elsif answer == "yes" then continue = true
end

@the_total = 0

while continue == true do

    def add
        puts "Which numbers would you like to add?"
        n1 = gets.chomp.to_i 
        puts "+" 
        n2 = gets.chomp.to_i
        @the_total = n1 + n2 + @the_total
        puts "= 
#{@the_total}"
    end

    def subtract
        puts "Which numbers would you like to subtract?"
        n1 = gets.chomp.to_i
        puts "-"
        n2 = gets.chomp.to_i
        @the_total= n1 - n2 + @the_total
        puts "= 
#{@the_total}"
    end

    def multiply #(x,y I could add this to my method)
    puts "Which numbers would you like to multiply?"
        n1 = gets.chomp.to_i
        puts "*"
        n2 = gets.chomp.to_i
       @the_total = n1 * n2 + @the_total
        puts "=
#{@the_total}"
    end

    def devide
        puts "Which numbers would you like to multiply?"
        n1 = gets.chomp.to_i
        puts "/"
        n2 = gets.chomp.to_i
       @the_total = n1 / n2 + @the_total
        puts "= 
#{@the_total}"
    end

    puts "Type one of the following [add], [multiply], [divide] or [subtract] ?"
    response = gets.chomp
    if response == "add" 
         add
    elsif response == "subtract"
         subtract
    elsif response == "multiply"
         multiply
    end

    puts "/********************************************************/

Would you like to continue? [yes] to enter new equation or [no]
to exit the claculatoror type [clear] to reset calculator and 
continue.

/********************************************************/"
    answer = gets.chomp()
    if answer == "no" then continue = false
    elsif answer == "yes" then continue = true
    elsif response == "clear"
        @the_total = 0
    else puts "invalid response"
    end
end