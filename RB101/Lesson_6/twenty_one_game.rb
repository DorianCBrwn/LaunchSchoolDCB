NUMBERS = (2..10).to_a
FACES = %w(Jack Queen King Ace)
CARD_VALUES= (1..11).to_a
SUITS = [:club, :diamond, :heart, :spade ]
#
#Methods

def initialize_deck
   new_deck = SUITS.each_with_object({}) { |suit, hash| hash[suit] = NUMBERS + FACES}
end

def deal_card(player, deck)
array.delete_at(rand(array.length))
end

def player_turn(deck)
  player_hand

end

def dealer_turn

end

def hand_busted?(hand)

end

def stay?(player)

end

def hit(hand)

end

def detect_winner

end

def tie_game

end

def track_winners

end


#Program
loop do 
deck = initialize_deck
end
