# calculator.rb

$operations = {
  99 => 'Exit',
  1 => '+ Addition',
  2 => '- Substraction',
  3 => '* Multiplication',
  4 => '/ Division',
}

def display_menu
  puts ""
  puts "**********************************"
  puts "Welcome to my calculator"
  puts ""
  $operations.each {|key, value| puts "#{key}. #{value}" }
  puts ""
  print "Select your operation: "
end

def valid_option?(parameter)
  if $operations.key?(parameter) 
    return true
  else
    return false
  end
end

def get_numbers
  puts "Select your first number:"
  first_number = gets().chomp.to_i
  puts "Select your second number:"
  second_number = gets().chomp.to_i
  return [first_number, second_number]
end

loop do 
  display_menu
  option = gets().chomp()
  is_valid = valid_option?(option.to_i)
  unless is_valid
    puts "Invalid Option!"
    next
  end
  numbers = get_numbers()
  case option.to_i
  when 1
    puts "#{numbers.first} + #{numbers.last} = #{numbers.first + numbers.last}"
  when 2
    puts "#{numbers.first} - #{numbers.last} = #{numbers.first - numbers.last}"
  when 3
    puts "#{numbers.first} * #{numbers.last} = #{numbers.first * numbers.last}"
  when 4
    puts "#{numbers.first} / #{numbers.last} = #{numbers.first / numbers.last}"
  when 99
    puts "K, Thanks, BAI!!"
    exit
  end
end