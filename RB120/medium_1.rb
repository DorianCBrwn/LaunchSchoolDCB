=begin
#Exercise 1
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
=end

#Exercise 4
class CircularQueue
  attr_accessor :buffer, :write_idx

  def initialize(size)
    @buffer = Array.new(size)
    @write_idx = 0
  end

  def enqueue(ele)
    buffer[write_idx] = ele
  end

  def dequeue

  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 0

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

#Exercise
#class GuessingGame
  attr_accessor :guesses, :answer, :tries, :range

  def initialize
    @tries = 7
    @answer = rand(1..100)
    @guesses = nil
    @range = 1..100
  end

  def play
    p tries
    loop do
    puts "You have #{tries} guesses remaining"
    p @answer
    guess
    #check_guess
    break if check_guess
      reduce_tries
    end
  end

  def reduce_tries
    self.tries -= 1
  end

  def guess
    n = nil
    loop do
    puts "Enter a number between 1 and 100"
    n = gets.chomp.to_i
    self.guesses = n
    break if range.include?(n)
    puts "Invalid guess. Enter a number between 1 and 100: #{n}"
    end
  end

  def check_guess
    if guesses == answer
      puts "That's the number!"
      true
    elsif guesses < answer
      puts " Your guess is too low"
    else
      puts "your number is too high"
    end
  end

end


game = GuessingGame.new
game.play
