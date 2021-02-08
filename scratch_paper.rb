=begin
  1. Initialize deck
  2. Deal cards to player and dealer
  3. Player turn: hit or stay
    - repeat until bust or "stay"
  4. If player bust, dealer wins.
  5. Dealer turn: hit or stay
    - repeat until total >= 17
  6. If dealer bust, player wins.
  7. Compare cards and declare winner.
=end

# CONSTANTS
SUITS =   %w(hearts diamonds clubs spades) # ["hearts", "diamonds", "clubs", "spades"]
VALUES = ('2'..'10').to_a + %w(jack queen king ace) # ["2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king", "ace"]

# METHODS
def prompt(msg)
  puts "=> #{msg}"
end

def display_game_intro
  puts ""
  prompt("Welcome to 21 AKA Blackjack!")
  puts "-------------------------------------------------------------------------------------------"
  overview = <<-FOO
  Overview:
  1. 21 is a card game played between a player and a dealer.
  2. Card values:
      - (2-10) are worth face value
      - (Jack, Queen, King) are worth 10
      - (Ace) is worth 1 or 11
  3. The goal is to get as close to 21 as possible, without going over.
     If you go over 21, that is considered a 'bust' and you lose.
  4. Important terms to know:
      - 'Hit': How to ask for another card.
      - 'Stay': No more cards are dealt. Current hand is compared to dealer's hand
      - 'Bust': You have exceeded 21 and lose the game.
  FOO
  prompt(overview)
  puts "-------------------------------------------------------------------------------------------"
  gameplay = <<-FOO
  Gameplay:
  1. Each player starts with two cards, with one of the dealer's cards being hidden until the end.
  2. If you go over 21 you bust, and the dealer wins regardless of the dealer's hand.
  3. If you are dealt 21 from the start (Ace & 10), you got a blackjack.
  4. Dealer will hit until their cards total 17 or higher.
  FOO
  prompt(gameplay)
  puts "-------------------------------------------------------------------------------------------"
  sleep(2)
  system 'clear'
end

def initialize_deck # [{:suit=>"spades", :value=>"3", :points=>3}, {:suit=>"clubs", :value=>"10", :points=>10}...]
  full_deck = []
  SUITS.product(VALUES).each do |card|
    card_pairs = {}

    card_pairs[:suit] = card[0]
    card_pairs[:value] = card[1]

    case card[1]
    when "ace" then card_pairs[:points] = 11
    when "jack", "queen", "king" then card_pairs[:points] = 10
    else card_pairs[:points] = card[1].to_i
    end
    full_deck << card_pairs
  end
  full_deck.shuffle
end

def calculate_aces(values)
  sum = values.sum

  values.count(11).times { sum -= 10 if sum > 21}
  sum
end

def total(hand)
  values = hand.map { |hand| hand[:points] }
  calculate_aces(values)
end

def display_initial_deal(deck, player_hand, dealer_hand)
  2.times do
    player_hand << deck.sample # [{:suit=>"hearts", :value=>"9", :points=>9}, {:suit=>"clubs", :value=>"4", :points=>4}]
    dealer_hand << deck.sample # [{:suit=>"clubs", :value=>"queen", :points=>10}, {:suit=>"clubs", :value=>"8", :points=>8}]
  end

  prompt("Dealer has: #{dealer_hand[0][:value]} of #{dealer_hand[0][:suit]} and unknown card.")
  puts "----------------------------------------------------------------"
  prompt("You have...")
  player_hand.each do |hand|
    puts ("#{hand[:value]} of #{hand[:suit]} ")
  end
  puts ("Total: #{total(player_hand)}")
  puts ""

  stay(player_hand) if total(player_hand) == 21
end

def display_dealer_initial_hand(dealer_hand)
  prompt("The dealer has: #{dealer_hand[0][:value]} of #{dealer_hand[0][:suit]} and unknown card ")
  puts "----------------------------------------------------------------"
end

def hit_or_stay?
  choice = ''

  loop do
    prompt("Hit or stay? Enter 'h' for hit, 's' for stay.")
    choice = gets.chomp
    break if %w(h hit s stay).include?(choice)
    prompt("Invalid input, try again")
  end
  choice
end

def player_hit(player_hand,dealer_hand, deck)
  prompt("You decided to hit!")
  sleep(2)
  system 'clear'
  hit!(player_hand, deck)
  display_dealer_initial_hand(dealer_hand)
  display_updated_player_hand(player_hand)
  puts "----------------------------------------------------------------"
end

def hit!(hand, deck)
  hand << deck.pop
end

def stay(hand)
  prompt("You have decided to stay.")
  sleep(2)
  system 'clear'
end

def bust?(hand)
  total(hand) > 21
end

def nobody_busts(player_hand, dealer_hand)
  (!bust?(player_hand) && !bust?(dealer_hand))
end

def display_updated_player_hand(player_hand)
  prompt("Your hand: ")
  player_hand.each { |hand| prompt("#{hand[:value]} of #{hand[:suit]} ") }
  prompt("Total: #{total(player_hand)}")
end

def display_updated_dealer_hand(dealer_hand)
  dealer_hand.each { |hand| prompt("#{hand[:value]} of #{hand[:suit]} ") }
  prompt("Total: #{total(dealer_hand)}")
  puts "----------------------------------------------------------------"
end

def player_turn(player_hand, dealer_hand, deck)
  loop do
    case hit_or_stay?
    when 'h' || 'hit'
      player_hit(player_hand, dealer_hand, deck)
      break if total(player_hand) == 21
      break if bust?(player_hand)
    when 's' || 'stay'
      stay(player_hand)
      break
    end
  end
  prompt("You have 21...wait for dealer.") if total(player_hand) == 21
  prompt("You bust! Dealer won!") if bust?(player_hand)
end

def dealer_turn(dealer_hand, player_hand, deck)
  puts "Dealer's initial hand:"
  display_updated_dealer_hand(dealer_hand)
  sleep(3)
  system 'clear'
  while total(dealer_hand) < 17
    hit!(dealer_hand, deck)
  end
  puts "Dealer's new hand"
  display_updated_dealer_hand(dealer_hand)
  prompt("Your total: #{total(player_hand)}, Dealer total: #{total(dealer_hand)}")
  puts ""
  prompt("Dealer bust!") if total(dealer_hand) > 21
end

def calculate_winner(player_hand, dealer_hand)
  if nobody_busts(player_hand, dealer_hand) && total(player_hand) == total(dealer_hand)
    :tie
  elsif nobody_busts(player_hand, dealer_hand)
    total(player_hand) > total(dealer_hand) ? :player : :dealer
  elsif bust?(dealer_hand)
    :player
  end
end

def display_winner(player_hand, dealer_hand)
  result = calculate_winner(player_hand, dealer_hand)

  case result
  when :player then prompt("You win!")
  when :dealer then prompt("Dealer wins!")
  when :tie then prompt("It's a tie!")
  end
end

def display_score(score)
  prompt("Your score: #{score[:plyr_score]}")
  prompt("Dealer score: #{score[:deal_score]}")
end

def update_score!(score, player_hand, dealer_hand)
  score[:plyr_score] += 1 if calculate_winner(player_hand, dealer_hand) == :player
  score[:deal_score] += 1 if calculate_winner(player_hand, dealer_hand) == :dealer
  score[:deal_score] += 1 if bust?(player_hand)
end

def play_again?
  choice = ''
  loop do
    prompt("Would you like to play again? (Y or N)")
    choice = gets.chomp.downcase

    break if ['y', 'n', 'yes', 'no'].include?(choice)
    prompt("Invalid input. Try again.")
  end
  choice.start_with?('y')
end


# GAME LOOP
score = { plyr_score: 0, deal_score: 0 }


display_game_intro

loop do

  deck = initialize_deck

  player_hand = []
  dealer_hand = []

  display_score(score)
  sleep(3)
  system 'clear'

  display_initial_deal(deck, player_hand, dealer_hand)

  unless total(player_hand) == 21
    player_turn(player_hand, dealer_hand, deck)
  end

  player_total = total(player_hand)

  unless !!bust?(player_hand)
    dealer_turn(dealer_hand, player_hand, deck)
  end

  dealer_total = total(dealer_hand)

  display_winner(player_hand, dealer_hand)
  update_score!(score, player_hand, dealer_hand)

  break unless play_again?
  system 'clear'
end
system 'clear'
puts "----------------------------------------------------------------"
display_score(score)
puts "----------------------------------------------------------------"
puts ""
prompt("Thank you for playing 21!")
sleep(3)