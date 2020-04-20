# frozen_string_literal: true

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

def show_hand(hand)
  hand.each_with_index do |card, _index|
    word = card.include?('Ace') ? 'an' : 'a'
    if card == hand.last
      print "and #{word} #{card[0]} of #{card[1]} "
      puts "for a total of #{calculate_hand(hand)}. "
    else
      print "#{word} #{card[0]} of #{card[1]}, "
    end
  end
end

def hand_busted?(hand)
  calculate_hand(hand) > 21
end

def detect_result(dealer_hand, player_hand)
  player_total = calculate_hand(player_hand)
  dealer_total = calculate_hand(dealer_hand)

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

def display_result(dealer_hand, player_hand)
  result = detect_result(dealer_hand, player_hand)

  case result
  when :player_busted
    prompt 'You busted! Dealer wins!'
  when :dealer_busted
    prompt 'Dealer busted! You win!'
  when :player
    prompt 'You win!'
  when :dealer
    prompt 'Dealer wins!'
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

# Program
loop do
  deck = initialize_deck
  player_hand = []
  dealer_hand = []

  deal_card(deck, player_hand)
  deal_card(deck, dealer_hand)

  prompt "The Dealer has #{dealer_hand[0][0]} of #{dealer_hand[0][1]} and ?"
  print '=> You have '
  show_hand(player_hand)
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
      prompt 'You chose to hit!'
      print '=> You now have '
      show_hand(player_hand)
    end

    break if player_turn == 's' || hand_busted?(player_hand)
  end

  if hand_busted?(player_hand)
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "You stayed at #{calculate_hand(player_hand)}"
  end

  # dealer turn
  prompt 'Dealer turn...'

  loop do
    break if calculate_hand(dealer_hand) >= 17

    prompt 'Dealer hits!'
    deal_card(deck, dealer_hand)
    prompt "Dealer's cards are now:"
    show_hand(dealer_hand)
  end

  if hand_busted?(dealer_hand)
    prompt "Dealer total is now: #{calculate_hand(dealer_hand)}"
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{calculate_hand(dealer_hand)}"
  end

  # both player and dealer stays - compare cards!
  puts '=============='
  puts 'Dealer has:'
  show_hand(dealer_hand)
  prompt 'Player has:'
  show_hand(player_hand)
  puts '=============='

  display_result(dealer_hand, player_hand)

  break unless play_again?
end

prompt 'Thank you for playing Twenty-One! Good bye!'
