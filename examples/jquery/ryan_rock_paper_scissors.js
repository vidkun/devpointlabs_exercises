var game_counter = 0;
var win_counter = 0;
var loss_counter = 0;
var tie_counter = 0;
var choices = ["rock", "paper", "scissors", "lizard", "spock"];

function play() {
  var user_choice = $( "#user_choice:checked" ).val();
  var randomNumber = Math.floor((Math.random()*5)+1);
  var computer_choice = choices[randomNumber];
  game_counter++;
  var result = "";
  var reason = "";
  $( "#computer_choice" ).html( computer_choice );

  if (user_choice == "rock") {
    switch computer_choice {
      case "rock":
        result = "It's a tie!";
        reason = "You both chose Rock";
        tie_counter++;
        break;
      case "paper":
        reason = "Paper covers Rock";
        result = "Computer wins this round.";
        loss_counter++;
        break;
      case "scissors":
        reason = "Rock crushes Scissors";
        result = "You won this round!";
        win_counter++;
        break;
      case "lizard":
        reason = "Rock crushes Lizard";
        result = "You won this round!";
        win_counter++;
        break;
      case "spock":
        reason = "Spock vaporizes Rock";
        result = "Computer wins this round.";
        loss_counter++;
        break;
      }
  } else if (user_choice == "paper") {
      switch computer_choice {
        case "rock":
          puts ''
          puts 'Paper covers Rock'
          puts 'You won this round!'
          puts ''
          win_counter++;
          break;
        case "paper":
          puts ''
          puts "It's a tie!"
          puts 'You both chose Paper'
          puts ''
          tie_counter++;
          break;
        case "scissors":
          puts ''
          puts 'Scissors cut Paper'
          puts 'Computer wins this round.'
          puts ''
          loss_counter++;
          break;
        case "lizard":
          puts ''
          puts 'Lizard eats Paper'
          puts 'Computer wins this round.'
          puts ''
          loss_counter++;
          break;
        case "spock":
          puts ''
          puts 'Paper disproves Spock'
          puts 'You won this round!'
          puts ''
          win_counter++;
          break;
      }
    }



};