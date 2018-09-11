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

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('The computer won!')
  else
    prompt('It was a tie!')
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
  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing Rock, Paper, Scissors, Spock, Lizard!')
prompt('Goodbye.')
