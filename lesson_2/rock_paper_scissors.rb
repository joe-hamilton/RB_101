VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']
OPTIONS = { r: ['sc', 'l'], p: ['r', 'sp'], sc: ['p', 'l'],
            l: ['sp', 'p'], sp: ['sc', 'r'] }

def game_greeting
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock")
  prompt("The options for the game are:")
  game_choices = <<-MSG
      Choose one:
      r for rock
      p for paper
      sc for scissors
      sp for spock
      l for lizard
      MSG
  prompt(game_choices)
end

def prompt(message)
  puts "=> #{message}"
end

def player_choice
  choice = ''
  loop do
    prompt("Please choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    break if VALID_CHOICES.include?(choice)
    prompt("Incorrect choice. Try again.")
  end
  choice
end

def win?(options, player1, player2)
  options[player1.to_sym].include?(player2)
end

def display_results(score, options, player, computer)
  if win?(options, player, computer)
    prompt("You won!")
    score[:player] += 1
  elsif win?(options, computer, player)
    prompt("Computer won!")
    score[:computer] += 1
  else
    prompt("It's a tie!")
  end
end

def print_game_winner(score)
  if score[:player] == 3
    prompt("You are the grand winner")
  elsif score[:computer] == 3
    prompt("The computer is the grand winner")
  end
end

game_greeting
loop do
  game_score = { player: 0, computer: 0 }
  loop do
    choice = player_choice
    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(game_score, OPTIONS, choice, computer_choice)
    prompt(game_score)
    print_game_winner(game_score)
    break if game_score[:player] == 3 || game_score[:computer] == 3
  end
  prompt("Would you like to play again? Enter y or n")
  break unless gets.chomp == 'y'
end


# VALID_CHOICES = %w(r p sc sp l)
# PLAY_AGAIN_RESPONSES = %w(y yes n no)

# def prompt(message)
#   Kernel.puts("=> #{message}")
# end

# def clear
#   system('clear') || system('cls')
# end

# def win?(first, second)
#   (first == 'r' && (second == 'sc' || second == 'l')) ||
#     (first == 'p' && (second == 'r' || second == 'sp')) ||
#     (first == 'sc' && (second == 'p' || second == 'l')) ||
#     (first == 'sp' && (second == 'r' || second == 'sc')) ||
#     (first == 'l' && (second == 'sp' || second == 'p'))
# end

# def display_current_score(score)
#   current_score = <<-MSG
#   Player - #{score[:player_score]}
#     Computer - #{score[:computer_score]}
#     MSG
#   prompt(current_score)
# end

# def welcome_introduction
#   prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard!")

#   puts("-----------------------------------------------------")
#   game_rules = <<-MSG
#     Game rules
#     1. Match is player against computer.
#     2. When either player or computer reaches 5 wins, the match is over.
#     3. First one to 5 wins is the grand winner.
#     MSG
#   prompt(game_rules)
#   puts("-----------------------------------------------------")
# end

# def display_choices
#   game_choices = <<-MSG
#       Choose one:
#       r for rock
#       p for paper
#       sc for scissors
#       sp for spock
#       l for lizard

#       MSG
#   prompt(game_choices)
# end

# def gets_player_choice
#   player_choice = ''
#   loop do
#     player_choice = Kernel.gets().chomp()

#     if VALID_CHOICES.include?(player_choice)
#       break
#     else
#       prompt("Please enter a valid choice")
#     end
#   end
#   player_choice
# end

# def display_results(player, computer)
#   if win?(player, computer)
#     prompt("You won!")
#   elsif win?(computer, player)
#     prompt("Computer won!")
#   else
#     prompt("It's a tie.")
#   end
# end

# def new_score(player, computer, score)
#   if win?(player, computer)
#     score[:player_score] += 1
#   elsif win?(computer, player)
#     score[:computer_score] += 1
#   else
#     score
#   end
# end

# def grand_winner?(score)
#   if score[:player_score] == 5
#     puts("**************************************************")
#     prompt("You are the GRAND winner! Nice job!")
#     puts("**************************************************")
#   elsif score[:computer_score] == 5
#     prompt("You lose. Better luck next time.")
#   end
# end

# def play_again?
#   answer = ''
#   loop do
#     prompt("Would you like to play again? Y or N")
#     answer = Kernel.gets().chomp().downcase

#     if PLAY_AGAIN_RESPONSES.include?(answer)
#       break
#     else
#       prompt("Please enter in a correct response. Y or N")
#     end
#   end
#   answer.downcase.start_with?('y')
# end

# def reset_score(score)
#   score[:player_score] = 0
#   score[:computer_score] = 0
# end

# welcome_introduction

# score = { player_score: 0, computer_score: 0 }
# loop do
#   loop do
#     display_current_score(score)
#     display_choices
#     player_choice = gets_player_choice

#     clear

#     computer_choice = VALID_CHOICES.sample
#     prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")
#     display_results(player_choice, computer_choice)
#     new_score(player_choice, computer_choice, score)
#     break if score[:player_score] == 5 || score[:computer_score] == 5
#   end

#   grand_winner?(score)
#   break unless play_again?
#   reset_score(score)
# end

# prompt("Thank you for playing. Goodbye!")