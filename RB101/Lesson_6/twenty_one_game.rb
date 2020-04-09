SUITS = {'C' => 'Clubs', 'S' => 'Spades', 'D' => 'Diamonds', 'H' => 'Hearts'}
FACE_CARDS = {'J' => "Jack", 'Q' => "Queen", 'K' => "King"}
ACES = {'A' => "Ace"}

def create_cards(prefix, suit, delimiter='')
  cards = []
  prefix.each do |char|
    unless delimiter.empty? 
      delimiter = ' of ' + SUITS[char]
    end
    suit.each do |letter|
      cards << {"#{char}" + delimiter + "#{letter}" => char}
    end
  end
  cards
end

face_delimiter = SUITS.values.map{|word| ' of ' + word}
#TODO fix create_cards method to create multiple types of cards

# create_cards((2..9), SUITS.keys)
create_cards(FACE_CARDS.keys, Array.new(3, 10), SUITS)

def initialize_deck

end

def deal_card(player)

end

def player_turn

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



