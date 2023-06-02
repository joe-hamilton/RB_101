# CONSTANTS
SUITS = %w(hearts diamonds clubs spades)
VALUES = ('2'..'10').to_a + %w(jack queen king ace)
GOAL_WINS = 3
BLACKJACK = 21
DEALER_MIN = 17

# METHODS
def prompt(msg)
  puts "=> #{msg}"
end

def display_divider
  puts "----------------------------------------------------------------------"
end

def twenty_one_overview
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
end

def twenty_one_gameplay
  gameplay = <<-FOO
  Gameplay:
  1. Each player starts with two cards, with one of the dealer's cards being hidden until the end.
  2. If you go over 21 you bust, and the dealer wins regardless of the dealer's hand.
  3. If you are dealt 21 from the start (Ace & 10), you have a blackjack.
  4. Dealer will hit until their cards total 17 or higher.
  FOO
  prompt(gameplay)
end

def display_game_intro
  puts ""
  prompt("Welcome to 21 AKA Blackjack!")
  display_divider
  twenty_one_overview
  display_divider
  twenty_one_gameplay
  display_divider
  prompt("Press any key to begin game.")
  gets.chomp
  system 'clear'
end

def initialize_deck
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

  values.count(11).times { sum -= 10 if sum > BLACKJACK }
  sum
end

def total(hand)
  values = hand.map { |card| card[:points] }
  calculate_aces(values)
end

def initial_deal(deck, plyr_hand, deal_hand)
  2.times do
    plyr_hand << deck.sample
    deal_hand << deck.sample
  end
end

def display_initial_deal(deck, plyr_hand, deal_hand)
  sleep(3)
  system 'clear'
  initial_deal(deck, plyr_hand, deal_hand)
  display_dealer_initial_hand(deal_hand)
  display_player_initial_hand(plyr_hand)
end

def display_player_initial_hand(plyr_hand)
  prompt("You have...")
  plyr_hand.each do |hand|
    puts "#{hand[:value]} of #{hand[:suit]} "
  end
  puts "Total: #{total(plyr_hand)}"
  puts ""

  stay if total(plyr_hand) == BLACKJACK
end

def display_dealer_initial_hand(deal_hand)
  prompt("Dealer hand: #{deal_hand[0][:value]} of #{deal_hand[0][:suit]}")
  prompt("             unknown card")
  display_divider
end

def display_have_blackjack
  prompt("You have 21...wait for dealer.")
end

def player_has_blackjack?(plyr_hand)
  total(plyr_hand) == BLACKJACK
end

def hit_or_stay?
  choice = ''

  loop do
    prompt("Hit or stay? Enter 'h' for hit, 's' for stay.")
    choice = gets.chomp.downcase
    break if %w(h hit s stay).include?(choice)
    prompt("Invalid input, try again")
  end
  choice
end

def player_hit(plyr_hand, deal_hand, deck)
  prompt("You decided to hit!")
  sleep(2)
  system 'clear'
  hit!(plyr_hand, deck)
  display_dealer_initial_hand(deal_hand)
  display_updated_plyr_hand(plyr_hand)
  display_divider
end

def hit!(hand, deck)
  hand << deck.pop
end

def stay
  prompt("You have decided to stay.")
  sleep(2)
  system 'clear'
end

def bust?(hand)
  total(hand) > BLACKJACK
end

def display_bust(plyr_hand, deal_hand)
  if bust?(plyr_hand)
    prompt("You bust! Dealer won!")
  elsif  total(deal_hand) > BLACKJACK
    prompt("Dealer bust!")
  end
end

def nobody_busts(plyr_hand, deal_hand)
  (!bust?(plyr_hand) && !bust?(deal_hand))
end

def display_updated_plyr_hand(plyr_hand)
  prompt("Your hand: ")
  plyr_hand.each { |hand| prompt("#{hand[:value]} of #{hand[:suit]} ") }
  prompt("Total: #{total(plyr_hand)}")
end

def display_updated_deal_hand(deal_hand)
  deal_hand.each { |hand| prompt("#{hand[:value]} of #{hand[:suit]} ") }
  prompt("Total: #{total(deal_hand)}")
  display_divider
end

def player_turn(plyr_hand, deal_hand, deck)
  loop do
    case hit_or_stay?
    when 'h' || 'hit'
      player_hit(plyr_hand, deal_hand, deck)
      break if total(plyr_hand) == BLACKJACK
      break if bust?(plyr_hand)
    when 's' || 'stay'
      stay
      break
    end
  end
end

def dealer_turn(deal_hand, plyr_hand, deck)
  puts "Dealer's initial hand:"
  display_updated_deal_hand(deal_hand)
  sleep(3)
  system 'clear'
  while total(deal_hand) < DEALER_MIN
    hit!(deal_hand, deck)
  end
  puts "Dealer's new hand"
  display_updated_deal_hand(deal_hand)
  prompt("Your total: #{total(plyr_hand)}")
  prompt("Dealer total: #{total(deal_hand)}")
  puts ""
  display_bust(plyr_hand, deal_hand)
end

def calculate_winner(plyr_hand, deal_hand)
  if nobody_busts(plyr_hand, deal_hand) && total(plyr_hand) == total(deal_hand)
    :tie
  elsif nobody_busts(plyr_hand, deal_hand)
    total(plyr_hand) > total(deal_hand) ? :player : :dealer
  elsif bust?(deal_hand)
    :player
  end
end

def display_winner(plyr_hand, deal_hand)
  result = calculate_winner(plyr_hand, deal_hand)

  case result
  when :player then prompt("You win!")
  when :dealer then prompt("Dealer wins!")
  when :tie then prompt("It's a tie!")
  end
end

def grand_winner?(score)
  score[:plyr_score] == GOAL_WINS || score[:deal_score] == GOAL_WINS
end

def display_score(score)
  prompt("Your score: #{score[:plyr_score]}")
  prompt("Dealer score: #{score[:deal_score]}")
end

def update_score!(score, plyr_hand, deal_hand)
  if calculate_winner(plyr_hand, deal_hand) == :player
    score[:plyr_score] += 1
  elsif calculate_winner(plyr_hand, deal_hand) == :dealer
    score[:deal_score] += 1
  elsif bust?(plyr_hand)
    score[:deal_score] += 1
  end
  sleep(3)
  system 'clear'
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

def display_goodbye
  prompt("Thank you for playing 21!")
end

# GAME LOOP
display_game_intro

loop do
  score = { plyr_score: 0, deal_score: 0 }
  loop do
    deck = initialize_deck
    plyr_hand = []
    deal_hand = []

    display_divider
    display_score(score)
    display_divider

    display_initial_deal(deck, plyr_hand, deal_hand)

    unless player_has_blackjack?(plyr_hand)
      player_turn(plyr_hand, deal_hand, deck)
      display_have_blackjack if player_has_blackjack?(plyr_hand)
      display_bust(plyr_hand, deal_hand)
    end

    unless !!bust?(plyr_hand)
      dealer_turn(deal_hand, plyr_hand, deck)
    end

    display_winner(plyr_hand, deal_hand)
    update_score!(score, plyr_hand, deal_hand)

    break if grand_winner?(score)
  end
  display_divider
  display_score(score)
  display_divider
  break unless play_again?
end
display_goodbye
