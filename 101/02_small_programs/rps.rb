GAME_LOGIC = {
  valid_choices: {
    rock: { beats: ['scissors', 'lizard'], id: 1 },
    paper: { beats: ['spock', 'rock'], id: 2 },
    scissors: { beats: ['paper', 'lizard'], id: 3 },
    spock: { beats: ['rock', 'scissors'], id: 4 },
    lizard: { beats: ['spock', 'paper'], id: 5 }
  },
  round_choice: nil
}

def prompt(msg)
  puts "=> #{msg}"
end

def win?(first, second)
  GAME_LOGIC[:valid_choices][first.to_sym][:beats].include?(second)
end

def valid?(choice)
  GAME_LOGIC[:valid_choices].each do |key, val|
    if choice.to_i == val[:id] || choice == key.to_s
      GAME_LOGIC[:round_choice] = key.to_s
      return true
    end
  end
  false
end

def start_a_match?
  loop do
    prompt('Would you like to start a match (best of 5 wins)? (y/n)')
    match = gets.chomp

    if match.downcase.start_with?('y')
      return true
    elsif match.downcase.start_with?('n')
      return false
    else
      prompt('That\'s not a valid choice.')
    end
  end
end

def determine_player_choice
  loop do
    prompt('-----------------------------------------------------------')
    prompt('Choose one: 1) rock 2) paper 3) scissors 4) spock 5) lizard')
    prompt('-----------------------------------------------------------')
    player_choice = gets.chomp

    if valid?(player_choice)
      return GAME_LOGIC[:round_choice]
    else
      prompt('That\'s not a valid choice.')
    end
  end
end

def display_player_choices(player, computer)
  prompt("You chose: #{player}. The computer chose: #{computer}")
end

def clear_screen
  system('clear') || system('cls')
end

prompt('------------------------------------------------')
prompt('Welcome to Rock, Paper, Scissors, Spock, Lizard!')
prompt("------------------------------------------------")

loop do
  computer_score = 0
  player_score = 0
  game_round = 1
  match = start_a_match?
  clear_screen

  loop do
    prompt("ROUND: #{game_round}")

    player_choice = determine_player_choice
    clear_screen
    computer_choice = GAME_LOGIC[:valid_choices].keys.sample.to_s

    display_player_choices(player_choice, computer_choice)

    if win?(player_choice, computer_choice)
      player_score += 1
      prompt('You won!')
    elsif win?(computer_choice, player_choice)
      computer_score += 1
      prompt('The computer won!')
    else
      prompt('It was a tie!')
    end

    prompt('The final score is:') if game_round == 5
    prompt("Player: #{player_score}. Computer: #{computer_score}.")
    game_round += 1

    sleep 4
    clear_screen

    break unless match && game_round <= 5
  end

  prompt('Do you want to play again?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing Rock, Paper, Scissors, Spock, Lizard!')
prompt('Goodbye.')
