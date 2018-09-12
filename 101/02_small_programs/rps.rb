VALID_CHOICES = {
  rock: { beats: ['scissors', 'lizard'] },
  paper: { beats: ['spock', 'rock'] },
  scissors: { beats: ['paper', 'lizard'] },
  spock: { beats: ['rock', 'scissors'] },
  lizard: { beats: ['spock', 'paper'] }
}

def prompt(msg)
  puts "=> #{msg}"
end

def win?(first, second)
  VALID_CHOICES[first.to_sym][:beats].include?(second)
end

def num_to_hash_key(choice)
  case choice
  when 1
    'rock'
  when 2
    'paper'
  when 3
    'paper'
  when 4
    'scissors'
  when 5
    'lizard'
  end
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
      prompt('Choose one: 1) rock 2) paper 3) scissors 4) spock 5) lizard')
      choice = gets.chomp

      if [1, 2, 3, 4, 5].include?(choice.to_i)
        choice = num_to_hash_key(choice.to_i)
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
    prompt("Player: #{player_score}. Computer: #{computer_score}.")
    game_round += 1

    break unless game_round <= 5 && match == true
  end

  prompt('Do you want to play again?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing Rock, Paper, Scissors, Spock, Lizard!')
prompt('Goodbye.')
