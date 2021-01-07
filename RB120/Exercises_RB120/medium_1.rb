require 'pry'
=begin #Exercise 1
class Machine

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def switch_state
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end
my_M = Machine.new
my_M.start
my_M.stop
my_M.switch_state

#Exercise 2

class FixedArray < Array
 def []=
   self[index]
 end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end

#Exercise 3

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
end
#Exercise 4
class CircularQueue
  attr_accessor :buffer, :write_idx, :read_idx, :size

  def initialize(size)
    @size = size
    @buffer = Array.new(size, nil)
    @write_idx = 0
    @read_idx = 0
  end

  def move_write_idx
      self.write_idx = (self.write_idx + 1) % buffer.size
  end

  def move_read_idx
      self.read_idx = (self.read_idx + 1) % buffer.size
  end

  def enqueue(ele)
    move_read_idx unless is_value_overwritten?
    buffer[write_idx] = ele
    move_write_idx
  end

  def is_value_overwritten?
   buffer[write_idx].nil?
  end

  def dequeue
    removed_value = buffer[read_idx]
    buffer[read_idx] = nil
    move_read_idx unless removed_value.nil?
    removed_value
  end

  def to_s
    buffer.to_s
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
#Exercise 5

#Exercise 6: Number Guesser 1
class GuessingGame
  def initialize
    @guess_range = 1..100
    @guess = guess_range.to_a.sample
    @remaining_guesses = 7
    @user_guess = nil
  end

   def check_remaining_guesses
     if remaining_guesses == 0
      puts "Oh no you're all out of guesses, the correct answer was #{guess}."
      return true
     else
     puts "You have #{@remaining_guesses} remaining."
     return false
     end
   end


   def prompt_user_input
    puts "Enter a number between #{guess_range.first} and #{guess_range.last}:"
   end

  def play
    loop do
      break if check_remaining_guesses
      prompt_user_input
      set_guess
      break if check_guess
      decrement_guesses
    end
  end

  private
  attr_accessor :guess, :guess_range, :user_guess, :remaining_guesses

  def set_guess
    guess = nil
    loop do
      guess = gets.chomp.to_i
      break if guess_range.include?(guess)
      puts "Invalid Guess"
      prompt_user_input
    end
    self.user_guess = guess
  end

  def check_guess
    if user_guess > @guess
      puts "Your guess is too high."
      return false
    elsif user_guess < @guess
      puts "Your guess is too low."
      return false
    else
      puts "That's the number!"
      return true
    end
  end

  def decrement_guesses
    self.remaining_guesses = remaining_guesses - 1
  end

end

game = GuessingGame.new
game.play
#Exercise 7: Number Guesser 2
class GuessingGame

  RESULT_OF_GUESS_MESSAGE = {
    high:  "Your number is too high.",
    low:   "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  def initialize(range_start=1, range_end=100)
    @secret_number = nil
		@range = range_start..range_end
		@max_guesses = Math.log2(@range.size).to_i + 1
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

	attr_reader :range, :max_guesses
  def reset
    @secret_number = rand(range)
  end

  def play_game
    result = nil
    max_guesses.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end

  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def obtain_one_guess
    loop do
      print "Enter a number between #{range.first} and #{range.last}: "
      guess = gets.chomp.to_i
      return guess if range.cover?(guess)
      print "Invalid guess. "
    end
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low if guess_value < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end
game = GuessingGame.new(501, 1500)
game.play

#Exercise 8 Highest & Lowest rank Card
class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}."
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
     value <=> other_card.value
  end
end

cards = [Card.new(2, 'Hearts'),
  Card.new(10, 'Diamonds'),
  Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
  Card.new(4, 'Diamonds'),
  Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
  Card.new('Jack', 'Diamonds'),
  Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
  Card.new(8, 'Clubs'),
  Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8
=end
# Exercise 9: Deck of Cards
class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}."
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
     value <=> other_card.value
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

attr_accessor :cards, :card_count

  def initialize
    @cards = generate_cards
    @card_count = cards.size
  end

  def draw
    reset_deck
    drawn_card = cards.pop
    self.card_count -= 1
    drawn_card
  end

  def generate_cards
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle
  end

  def to_s
    "#{cards.map(&:to_s)}"
  end

  def reset_deck
    self.cards = generate_cards if card_count == 0
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13
 drawn2 = []
 52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
