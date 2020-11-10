=begin
#Question 1
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
hello.hi
# Outputs "Hello" and returns nil

hello = Hello.new
hello.bye
# Outputs No method error
#
hello = Hello.new
hello.greet

#Outputs ArgumentError 

hello = Hello.new
hello.greet("Goodbye")
Outputs Goodbye

Hello.hi

Outputs no method error

#Question 2
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

If we call Hello.hi we get an error message. How would you fix this?
change the hi message into a class method by using self.hi 
Then instanciate a new Greeting object and call greet on it
#Question 3
class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

instanciate two different AngryCat objects and pass in age and name arguments
my_cat = AngryCat.new(14, "Barry"
your_cat = AngryCat.new(4, "Garfield"

#Question 4
class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{@type)"
  end
end

Define a to_s method inside the the cat Class

#Question 5
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new will create a new television object without any state
tv. manufacturer will return a undefined method error because manufacturer is defined as a class method not an instance method
tv.model will execute whatever logic is defined in the model instance method
Television.manufacturer will run the class method manufactuer
Television.model will return an undefined method error because model is an instance method
#Question 6
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
#Question 7
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end
The unessessary return on line 140. The instance variables brightness and color are also unused.
=end
