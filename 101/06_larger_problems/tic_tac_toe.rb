WINNING_COMBOS = [
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def winning_move?(player, board)
  WINNING_COMBOS.any? do |sub_arr|
    return true if sub_arr.all? { |i| board[i] == player }
  end
end

def board_full?(board)
  board.all? { |e| e.is_a?(String) }
end

def update_board(choice, board)
  if choice.is_a?(String)
    board[choice.to_i - 1] = PLAYER_IDENTITY
  else
    board[choice - 1] = COMPUTER_IDENTITY
  end
end

def valid_input?(choice, board)
  available_choices = board.select { |e| e.is_a?(Integer) }

  if choice.to_i > 0 && available_choices.include?(choice.to_i)
    true
  else
    false
  end
end

def validate_identity
  player_identity = nil
  loop do
    player_identity = gets.chomp
    break if player_identity.upcase == 'X' || player_identity.upcase == 'O'
    prompt('Invalid choice. Please enter X or O.')
  end
  player_identity.upcase
end

def get_player_choice(board)
  loop do
    prompt('Please choose a board position by entering')
    prompt('one of the corresponding numbers below.')
    display_board(board)
    player_choice = gets.chomp

    if valid_input?(player_choice, board)
      update_board(player_choice, board)
      return player_choice
    end

    prompt('Invalid input. Please select one of the following positions:')
    prompt(board.select { |e| e.is_a?(Integer) }.join(', '))
  end
end

def get_computer_choice(board)
  computer_choice = board.select { |e| e.to_i > 0 }.sample
  clear_screen
  prompt("Computer moving to spot #{computer_choice}...")
  sleep 2
  update_board(computer_choice, board)
  computer_choice
end

def clear_screen
  system('clear') || system('cls')
end

prompt('Welcome to Tic-Tac-Toe!')

loop do
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  prompt('Would you like to be X or O?')

  PLAYER_IDENTITY = validate_identity
  COMPUTER_IDENTITY = PLAYER_IDENTITY == 'X' ? 'O' : 'X'
  clear_screen

  prompt("Player will be #{PLAYER_IDENTITY}.")
  prompt("Computer will be #{COMPUTER_IDENTITY}.")

  sleep 2.5
  clear_screen

  loop do
    get_player_choice(board)
    if winning_move?(PLAYER_IDENTITY, board)
      clear_screen
      prompt('You won!')
      display_board(board)
      sleep 3
      break
    end

    if board_full?(board)
      prompt('It is a tie game!')
      display_board(board)
      sleep 3
      break
    end

    get_computer_choice(board)
    if winning_move?(COMPUTER_IDENTITY, board)
      clear_screen
      prompt('Uh oh, the computer won. Better luck next time!')
      display_board(board)
      sleep 4
      break
    end

    clear_screen
  end

  clear_screen
  prompt('Would you like to play again? (y/n)')
  answer = gets.chomp

  break if ['n', 'no'].include?(answer.downcase)

  if !%(y yes n no).include?(answer.downcase)
    prompt('Invalid input. Please enter y/n to continue')
  end
  clear_screen
end

clear_screen
prompt('Thank you for playing Tic-Tac-Toe! Goodbye.')
