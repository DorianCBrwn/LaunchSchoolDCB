class Participant
  attr_accessor :hand

  def initialize
    @hand= []
  end

  def hit

  end

  def stay
  end

  def busted?
  end

  def total
  # definitely looks like we need to know about "cards" to produce some total
  end
end

class Player < Participant
end

class Dealer < Participant
end
class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
#41:14
 attr_accessor :deck

def initialize
    generate_cards
end

def generate_cards
  self.deck = RANKS.product(SUITS).map do |rank, suit|
    Card.new(rank, suit)
  end
  self.deck.shuffle!
end

def to_s
  "#{self.deck.map(&:to_s)}"
end

def deal

end
end

class Card
  attr_reader :rank, :suit

def initialize(rank, suit)
    @rank = rank
    @suit = suit
end

def to_s
  "#{rank} of #{suit}"
end

end

class Game
  def initialize
    deck = Deck.new
  end
def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
end
end
puts Card.new("Jack", "Spades")
puts Deck.new
  #Game.new.start
