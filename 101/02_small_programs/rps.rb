VALID_CHOICES = {
  rock: {
    beats: ['scissors', 'lizard'],
    loses_to: ['paper', 'spock']
  },
  paper: {
    beats: ['spock', 'rock'],
    loses_to: ['scissors', 'lizard']
  },
  scissors: {
    beats: ['paper', 'lizard'],
    loses_to: ['spock', 'rock']
  },
  spock: {
    beats: ['rock', 'scissors'],
    loses_to: ['lizard', 'paper']
  },
  lizard: {
    beats: ['spock', 'paper'],
    loses_to: ['rock', 'scissors']
  }
}

def prompt(msg)
  puts "=> #{msg}"
end

def win?(first, second)
  VALID_CHOICES[first.to_sym][:beats].include? second
end

prompt('Welcome to Rock, Paper, Scissors, Spock, Lizard!')

loop do
  computer_score = 0
  player_score = 0
  game_round = 1
  
  match = ''
  loop do
    prompt('Would you like to start a match? (y/n)')
    match = gets.chomp

    if match.downcase.start_with?('y')
      match = true
      break
    elsif match.downcase.start_with?('n')
      match = false
      break
    else
      prompt('That\'s not a valid choice.')
    end
  end

  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.keys.join(', ')}")
      choice = gets.chomp

      if VALID_CHOICES.keys.include?(choice.to_sym)
        break
      else
        prompt('That\'s not a valid choice.')
      end
    end

    computer_choice = VALID_CHOICES.keys.sample.to_s

    prompt("You chose: #{choice}. The computer chose: #{computer_choice}")

    if win?(choice, computer_choice)
      player_score += 1
      prompt('You won!')
    elsif win?(computer_choice, choice)
      computer_score += 1
      prompt('The computer won!')
    else
      prompt('It was a tie!')
    end

    prompt('The final score is:') if game_round == 5
    game_round += 1
    prompt("Player: #{player_score}. Computer: #{computer_score}.")

    break unless game_round <= 5 && match == true
  end

  prompt('Do you want to play again?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing Rock, Paper, Scissors, Spock, Lizard!')
prompt('Goodbye.')
