=begin
#Ex1. Banner
class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  attr_reader :message

  def horizontal_rule
    "+#{create_spacer('-')}+"
  end

  def empty_line
    "|#{create_spacer(' ')}|"
  end
  
  def create_spacer(delimiter)
    delimiter * (message.size + 2)
  end

  def message_line
    "| #{message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
banner = Banner.new('')
puts banner

# Ex2. What's the Output?
class Pet
  attr_reader :name  # => nil

  def initialize(name)
    @name = name.to_s   # => "42"
  end                   # => :initialize

  def to_s
    "My name is #{@name.upcase}."  # => "My name is 42."
  end                              # => :to_s
end                                # => :to_s

#Further Exploration
name = 42               # => 42
fluffy = Pet.new(name)  # => #<Pet:0x00007fbd0d80f300 @name="42">
name += 1               # => 43
puts fluffy.name        # => nil
puts fluffy             # => nil
puts fluffy.name        # => nil
puts name               # => nil

# >> 42
# >> My name is 42.
# >> 42
# >> 43
# On line 52 local variable name is set to an Integer Object 42
# local variable name is passed to new as an argument and the instance variable
# @name is set to Integer Object 24
# Name.to_s calls the Integer implementation of to_s on integer object 42
# line 57 call the getter method name on the fluffy which returns the instance
# variable 42
# line 54 increments the local variable name not the instance variable name.

# Fix the Program - Books (Part 1)
class Book

  attr_reader :title, :author
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
#
# Fix the Program -Books(Part 2)
class Book
  attr_accessor :title, :author
  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
# Fix the Program -Persons
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
  end
  
  def first_name=(first_name)
    @first_name = first_name.capitalize
  end

  def last_name=(last_name)
    @last_name = last_name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person
# Fix the Program- Flight Data

class Flight

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# Buggy Code - Car Mileage
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678
# Rectables and Squares

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end


class Square <  Rectangle
  def initialize(side_length)
    super(side_length, side_length)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"
# Complete the Program - Cats!

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  attr_reader :name, :age, :color
  def initialize(name, age, color)
    super(name, age)
    @color = color
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
=end

# Refactoring Vehicles
class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

module Wheelable
  def wheels(number_of_wheels)
    @wheels = number_of_wheels
  end
end

class Car < Vehicle
  include Wheelable


end

class Motorcycle < Vehicle

  include Wheelable

end

class Truck < Vehicle
  attr_reader :payload

  include Wheelable

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end
end


my_truck = Truck.new('ford', 'F150', 1500)
my_truck.wheels(6)
