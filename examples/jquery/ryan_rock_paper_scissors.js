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
  

  if (user_choice == "rock") {
    switch(computer_choice) {
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
      switch(computer_choice) {
        case "rock":
          reason = "Paper covers Rock";
          result = "You won this round!";
          win_counter++;
          break;
        case "paper":
          result = "It's a tie!";
          reason = "You both chose Paper";
          tie_counter++;
          break;
        case "scissors":
          reason = "Scissors cut Paper";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "lizard":
          reason = "Lizard eats Paper";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "spock":
          reason = "Paper disproves Spock";
          result = "You won this round!";
          win_counter++;
          break;
      }
  } else if (user_choice == "scissors") {
      switch(computer_choice) {
        case "rock":
          reason = "Rock crushes Scissors";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "paper":
          reason = "Scissors cut Paper";
          result = "You won this round!";
          win_counter++;
          break;
        case "scissors":
          result = "It's a tie!";
          reason = "You both chose scissors";
          tie_counter++;
          break;
        case "lizard":
          reason = "Scissors decapitate Lizard";
          result = "You won this round!";
          win_counter++;
          break;
        case "spock":
          reason = "Spock smashes Scissors";
          result = "Computer wins this round.";
          loss_counter++;
          break;
      }
  } else if (user_choice == "lizard") {
      switch(computer_choice) {
        case "rock":
          reason = "Rock crushes Lizard";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "paper":
          reason = "Lizard eats Paper";
          result = "You won this round!";
          win_counter++;
          break;
        case "scissors":
          reason = "Scissors decapitate Lizard";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "lizard":
          result = "It's a tie!";
          reason = "You both chose Lizard";
          tie_counter++;
          break;
        case "spock":
          reason = "Lizard poisons Spock";
          result = "You won this round!";
          win_counter++;
          break;
      }
  } else if (user_choice == "spock") {
      switch(computer_choice) {
        case "rock":
          reason = "Spock vaporizes Rock";
          result = "You won this round!";
          win_counter++;
          break;
        case "paper":
          reason = "Paper disproves Spock";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "scissors":
          reason = "Spock smashes Scissors";
          result = "You won this round!";
          win_counter += 1
        case "lizard":
          reason = "Lizard poisons Spock";
          result = "Computer wins this round.";
          loss_counter++;
          break;
        case "spock":
          result = "It's a tie!";
          reason = "You both chose Spock";
          tie_counter++;
          break;
      }
  } else {
      alert("I don't know what happened!");
  }

  $( "#result" ).html( result );
  $( "#reason" ).html( reason );


};