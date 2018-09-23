board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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

def winner?(player, board)
  WINNING_COMBOS.any? do |sub_arr|
    return true if sub_arr.all? { |i| board[i] == player }
  end
end

def tie_game?(player1, player2, board)
  !winner?(player1, board) && !winner?(player2, board)
end

def board_full?(board)
  board.all? { |e| e.is_a?(String) }
end

def update_board(choice, board)
  if choice.is_a?(String)
    board[choice.to_i - 1] = 'X'
  else
    board[choice] = 'O'
  end
end


prompt('Welcome to Tic-Tac-Toe!')
prompt('Player is X. Computer is O.')
prompt('Please choose a board position by entering the corresponding number:')
display_board(board)

loop do

end
