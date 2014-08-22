# Rock paper scissors

choices = %w[rock paper scissors] # this is the as: ['rock', 'paper', 'scissors']
results = {
  :player => 0,
  :computer => 0,
  :ties => 0
}

player_results = 0
computer_results = 0
ties_results = 0

while true

  # puts '++++++++++++++++++++++++++++++'
  # puts '++++++++++++++++++++++++++++++'
  puts 'Welcome to Rock Paper Scissors'
  choices.each_with_index {|choice, index| puts "#{index + 1}. #{choice.capitalize}" }
  puts '0. EXIT GAME'
  puts 'Make your choice:'
  
  player_choice = gets().to_i - 1 # Cast choice to integer
  break if player_choice < 0 # If player choose 0 (it got substracted -1 and should be < 0 )

  unless (0..2) === player_choice # Check if the input is in the correct rante
    puts 'Invalid choice! No no no!'
    puts 'Try again'  
    next
  end
  computer_choice = rand(3)

  puts "\nThe computer chose #{choices[computer_choice]}!"

  if (computer_choice == 0 && player_choice == 2) || 
     (computer_choice == 1 && player_choice == 0) || 
     (computer_choice == 2 && player_choice == 1)
    puts "#{choices[computer_choice].capitalize} beats #{choices[player_choice].capitalize}, you lose!"
    results[:computer] += 1
  elsif computer_choice == player_choice
    puts 'You have tied'
    results[:ties] += 1
  else
    puts "#{choices[player_choice].capitalize} beats #{choices[computer_choice].capitalize}, you WIN!"
    results[:player] += 1
  end

end

puts ""
puts ""
puts "*************************************"
puts "The results:"
puts "Player wins: #{results[:player]}"
puts "Computer wins: #{results[:computer]}"
puts "Ties: #{results[:ties]}"

puts "Total Games: #{results[:player] + results[:computer] + results[:ties]}"
