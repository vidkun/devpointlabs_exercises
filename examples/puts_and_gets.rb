# Pick a Number Ruby Script and say if its even or odd number, divisible by 3
puts 'Welcome to Pick a Number'
puts 'Enter your number:'
# Get the number
number = gets()

puts "The length of your input is: #{number.length}"

# Print the number
# puts "Your number is: #{number}"
puts "Your number is:"
print number

# Check if even
# even_test = number.to_i % 2
# if even_test == 0
#   puts 'And your number is even'
# else
#   puts 'And your number is odd'
# end
result = (number.to_i % 2) == 0 ? 'even' : 'odd'
puts "And your number is #{result}"

#check if divisible by 3
# even_test = number.to_i % 3
# if even_test == 0
#   puts 'And your number is divisible by 3'
# else
#   puts 'And your number is NOT divisible by 3'
# end
while number.length > 1
  number_result = 0
  number.each_char { |char| number_result += char.to_i }
  number = number_result.to_s
  puts "Our new number #{number}"
end

# if number == '3' || number == '6' || number == '9'
#   puts 'Divisible by 3!'
# else 
#   puts 'NOT Divisible by 3!'
# end 
div_by_3_result = (number == '3' || number == '6' || number == '9') ? '' : 'NOT'
puts "#{div_by_3_result} Divisible by 3!"









