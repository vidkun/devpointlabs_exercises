# Rock paper scissors

choices         = %w[rock paper scissors]
player_choice   = nil
computer_choice = nil

puts 'Welcome to Rock Paper Scissors'
puts '1. Rock'
puts '2. Paper'
puts '3. Scissors'
puts 'Make your choice:'
player_choice = gets().to_i - 1
computer_choice = rand(3)
puts ''
puts "The computer chose #{choices[computer_choice]}!"



if computer_choice == 0 && player_choice == 2
  puts 'You lose! ha-ha!'
elsif computer_choice == 1 && player_choice == 0
  puts 'You lose! ha-ha!'
elsif computer_choice == 2 && player_choice == 1
  puts 'You lose! ha-ha!'
elsif computer_choice == player_choice
  puts 'You have tied'
else
  puts 'You win!'
end

