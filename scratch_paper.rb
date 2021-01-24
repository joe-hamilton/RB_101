# CONSTANTS
INITIAL_MARKER = " "
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

STARTING_OPTIONS = {
   "P" => 'player',
   "C" => 'computer',
   "R" => 'random'
}

# METHODS
def prompt(msg)
  puts "=> #{msg}"
end

def welcome_message
  puts "-----------------------------------------------------------------"
  prompt("Welcome to Tic Tac Toe!")
  rules = <<-FOO
  Rules:
  1. First one to occupy three consecutive squares wins the match
  2. First one to 3 wins the game
  FOO
  prompt(rules)
  puts "-----------------------------------------------------------------"
  sleep(4)
  #system 'clear'
end

def integer?(input)
  input.to_i.to_s == input
end

def joinor(arr, delimiter = ', ', word = ' or ')
  case arr.size
  when 0 then ' '
  when 1 then arr[0]
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  #system('clear')
  puts "* Player is #{PLAYER_MARKER} : Computer is #{COMPUTER_MARKER} *"
  puts ""
  puts "     |     |     "
  puts " #{brd[1]}   | #{brd[2]}   |  #{brd[3]}   "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts " #{brd[4]}   |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts " #{brd[7]}   |  #{brd[8]}  |  #{brd[9]}   "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board # {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
  new_board = {}

  (1..9).each {|num| new_board[num] = INITIAL_MARKER }
  new_board
end

def choose_starter
  starter = ''
  loop do
    prompt("Who would you like to go first?")
    options = <<-FOO
    '#{PLAYER}' for #{STARTING_OPTIONS[PLAYER]},
       '#{COMPUTER}' for #{STARTING_OPTIONS[COMPUTER]},
       '#{RANDOM}' for #{STARTING_OPTIONS[RANDOM]}.
    FOO
    prompt(options)
    starter = gets.chomp.upcase

    break if [PLAYER, COMPUTER, RANDOM].include?(starter)
    prompt("Please enter a valid input")
  end

  if starter == RANDOM
    starter = [PLAYER, COMPUTER, RANDOM].sample
  end
  starter
end

def empty_squares(brd) # [1, 2, 3, 4, 5, 6, 7, 8, 9]
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  player_choice = ''

  loop do
    prompt("Choose a square to place a piece: #{joinor(empty_squares(brd))}")
    player_choice = gets.chomp

    break if empty_squares(brd).include?(player_choice.to_i) && integer?(player_choice)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[player_choice.to_i] = PLAYER_MARKER
end

def computer_plays_offense(choice, brd)
  WINNING_LINES.each do |line|
    choice = find_at_risk_square(brd, line, COMPUTER_MARKER)
  break if choice
  end
  choice
end

def computer_plays_defense(choice, brd)
  WINNING_LINES.each do |line|
    choice = find_at_risk_square(brd, line, PLAYER_MARKER)
    break if choice
  end
  choice
end

def computer_places_piece!(brd)
  computer_choice = nil

  computer_choice = computer_plays_offense(computer_choice, brd) if !computer_choice
  computer_choice = computer_plays_defense(computer_choice, brd) if !computer_choice
  computer_choice = 5 if empty_squares(brd).include?(5)
  computer_choice = empty_squares(brd).sample if !computer_choice
  brd[computer_choice] = COMPUTER_MARKER
end

def place_piece_on_board(brd, player)
  if player == PLAYER
    player_places_piece!(brd)
  else player == COMPUTER
    computer_places_piece!(brd)
  end
end

def next_player(player)
  if player == PLAYER
    COMPUTER
  else
    PLAYER
  end
end

def find_at_risk_square(brd, line, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!winner(brd)
end

def initialize_score
  { player_score: 0, computer_score: 0 }
end

def display_scoreboard(score)
  prompt("Player - #{score[:player_score]} : Computer - #{score[:computer_score]}")
end

def update_score(win, score)
  if win == 'Player'
    score[:player_score] += 1
  elsif win == 'Computer'
    score[:computer_score] += 1
  end
end

def play_again?
  choice = ''
  loop do
    prompt("Would you like to play again? (Y or N)")
    choice = gets.chomp.upcase

    break if ['Y', 'N', 'YES', 'NO'].include?(choice)
    prompt("Invalid input. Try again.")
  end
  choice.start_with?('Y')
end

# MAIN GAME LOOP
welcome_message

loop do
  starting_player = choose_starter
  score = initialize_score # { player_score: 0, computer_score: 0 }

  loop do
    board = initialize_board # {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}
    current_player = starting_player

    loop do
      display_board(board)
      display_scoreboard(score)
      place_piece_on_board(board, current_player )
      display_board(board)
      current_player = next_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    update_score(winner(board), score)

    if someone_won?(board)
      prompt("#{winner(board)} is the winner!")
    else
      prompt("It's a tie!")
    end

    starting_player = next_player(starting_player)

    break if score[:player_score] == 3 || score[:computer_score] == 3
  end
  puts "-----------------------------"
  display_scoreboard(score)
  puts "-----------------------------"
  sleep(3)
  #system 'clear'

  choice = play_again?
  break unless choice
end
#system 'clear'
prompt("Thanks for playing Tic Tac Toe!")
