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

GAME_LOGIC[:valid_choices] = 'test'
puts GAME_LOGIC
