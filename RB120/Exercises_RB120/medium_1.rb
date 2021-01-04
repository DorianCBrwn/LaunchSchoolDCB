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
=end
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