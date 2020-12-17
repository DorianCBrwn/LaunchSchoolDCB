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
  attr_accessor :buffer, :write_idx, :read_idx, :size

  def initialize(size)
    @size = size
    @buffer = Array.new(size)
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
    buffer[write_idx] = ele
    move_read_idx  if is_value_overwritten?
    move_write_idx
  end

  def is_value_overwritten?
    buffer.size != 0 && write_idx == read_idx
  end

  def dequeue
    removed_value = buffer[read_idx]
    buffer[read_idx] = nil
    move_write_idx if is_value_overwritten?
    move_read_idx
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
puts queue.dequeue == 1
puts "The read index is at #{queue.read_idx}"

queue.enqueue(3)
queue.enqueue(4)
puts queue
puts queue.dequeue == 2
puts "The read index is at #{queue.read_idx}"
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue
puts queue.dequeue #== 5
puts "The read index is at #{queue.read_idx}"
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
=begin
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