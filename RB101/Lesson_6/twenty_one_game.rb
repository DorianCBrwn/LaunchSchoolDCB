require 'pry'
# Methods
def prompt(msg)
  puts "=> #{msg}"
end

RANKS = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King).freeze
SUITS = %w(Clubs Diamonds Hearts Spades).freeze

def initialize_deck
  new_deck = []
  SUITS.each do |suit|
    RANKS.each_with_index do |rank, idx|
      new_deck << case idx
                  when 9..12 then [rank, suit, 10]
                  when 0 then [rank, suit, 11]
                  else
                    [rank, suit, idx + 1]
                  end
    end
  end
  new_deck.shuffle
end

def deal_card(deck, hand)
  if hand.empty?
    2.times { hand << deck.delete_at(rand(deck.length)) }
  else
    hand << deck.delete_at(rand(deck.length))
  end
end

def calculate_hand(hand)
  hand_value = hand.map(&:last)
  total = hand_value.sum
  hand_value.count(11).times do
    total -= 10 if total > 21
  end
  total
end

def stay?(answer)
  answer.downcase.start_with?('s')
end

def show_hand(hand, total)
  hand.each_with_index do |card, _index|
    word = card.include?('Ace') ? 'an' : 'a'
    if card == hand.last
      print "and #{word} #{card[0]} of #{card[1]} "
      puts "for a total of #{total}. "
      puts 
    else
      print "#{word} #{card[0]} of #{card[1]}, "
    end
  end
end

def hand_busted?(total)
  total > 21
end

def detect_result(dealer_total, player_total)
  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_round_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)
  case result
  when :player_busted
    prompt 'You busted! Dealer wins the round!'
  when :dealer_busted
    prompt 'Dealer busted! You win the round!'
  when :player
    prompt 'You win the round!'
  when :dealer
    prompt 'Dealer wins the round!'
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts '-------------'
  prompt 'Do you want to play again? (y or n)'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def end_game?(games_played)
  games_played[:player_wins] >= 5 || games_played[:dealer_wins] >= 5
end

def track_winners(games_played, dealer_total, player_total)
  games_played[:total_games] += 1
  case detect_result(dealer_total, player_total)
  when :player_busted then games_played[:dealer_wins] += 1
  when :dealer then games_played[:dealer_wins] += 1
  when :dealer_busted then games_played[:player_wins] += 1
  when :player then games_played[:player_wins] += 1
  when :tie then games_played[:tie] += 1
  end
  games_played
end

def round_end(dealer_hand, dealer_total, player_hand, player_total)
  puts '=============='
  puts 'Dealer has:'
  show_hand(dealer_hand, dealer_total)
  prompt 'Player has:'
  show_hand(player_hand, player_total)
  puts '=============='
end

def display_game_end(games_played)
  if games_played[:dealer_wins] >= 5
    prompt "The dealer won #{games_played[:dealer_wins]} rounds out of #{games_played[:total_games]}"
    prompt "Oh no, looks like you lost. Better luck next time"
  elsif games_played[:player_wins] >= 5
    prompt "Congradulations! - You win!"
    prompt "You won #{games_played[:player_wins]} rounds out of #{games_played[:total_games]}"
  else
    prompt "You won #{games_played[:player_wins]} rounds; the Dealer won #{games_played[:dealer_wins]} out of #{games_played[:total_games]} games"
    if games_played[:player_wins] > games_played[:dealer_wins]
      prompt "You win the game!"
    elsif games_played[:player_wins] < games_played[:dealer_wins]
      prompt "You Lose!"
    else
      prompt "It's a tie, you and the dealer combined for #{games_played[:ties]}."
    end
  end
end

# Program
games_played = { dealer_wins: 0, player_wins: 0, total_games: 0, ties: 0 }
loop do
  p games_played
  deck = initialize_deck
  player_hand = []
  dealer_hand = []

  deal_card(deck, player_hand)
  deal_card(deck, dealer_hand)

  player_total = calculate_hand(player_hand)
  dealer_total = calculate_hand(dealer_hand)

  prompt "The Dealer has #{dealer_hand[0][0]} of #{dealer_hand[0][1]} and ?"
  print '=> You have '
  show_hand(player_hand, player_total)
  # player Turn
  loop do

    player_turn = nil
    loop do
      prompt 'Would you like to (h)it or (s)tay?'
      player_turn = gets.chomp.downcase
      break if %w(h s).include?(player_turn)

      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      deal_card(deck, player_hand)
      player_total = calculate_hand(player_hand)
      prompt 'You chose to hit!'
      print '=> You now have '
      show_hand(player_hand, player_total)
    end

    break if player_turn == 's' || hand_busted?(player_total)
  end

  if hand_busted?(player_total)
    round_end(dealer_hand, dealer_total, player_hand, player_total)
    display_round_result(dealer_total, player_total)
    track_winners(games_played, dealer_total, player_total)
    break if end_game?(games_played)
    play_again? ? next : break
  else
    prompt "You stayed at #{player_total}"
  end

  # dealer turn
  prompt 'Dealer turn...'

  loop do
    break if dealer_total >= 17

    prompt 'Dealer hits!'
    deal_card(deck, dealer_hand)
    dealer_total = calculate_hand(dealer_hand)
    prompt "Dealer's cards are now:"
    show_hand(dealer_hand, dealer_total)
  end

  if hand_busted?(dealer_total)
    round_end(dealer_hand, dealer_total, player_hand, player_total)
    display_round_result(dealer_total, player_total)
    track_winners(games_played, dealer_total, player_total)
    break if end_game?(games_played)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{dealer_total}"
  end


  # both player and dealer stays - compare cards!
  round_end(dealer_hand, dealer_total, player_hand, player_total)
  display_round_result(dealer_total, player_total)
  track_winners(games_played, dealer_total, player_total)
  break if end_game?(games_played)
  break unless play_again?
end
display_game_end(games_played)
prompt 'Thank you for playing Twenty-One! Good bye!'
