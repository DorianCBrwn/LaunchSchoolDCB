# Question 1
=begin
Which of the following are objects in Ruby? If they are objects, how can you find out what class they belong to?

true
"hello"
[1, 2, 3, "happy days"]
142

All are objects. to find out which are objects we can use the .class method.

# Question 2
=begin
If we have a Car class and a Truck class and we want to be able to go_fast, how
can we add the ability for them to go_fast using the module Speed? How can you
check if your Car or Truck can now go fast?

Include the Speed module in the Car and Truck classes

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

#Question 3
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

the go fast method is called through the car object because of the method look up tree.

x: We use self.class in the method and this works the following way:

self refers to the object itself, in this case either a Car or Truck object.
We ask self to tell us its class with .class. It tells us.
We don't need to use to_s here because it is inside of a string and is interpolated which means it will take care of the to_s for us.

#Question 4
If we have a class AngryCat how do we create a new instance of this class?

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

AngryCat.new

# Question 5
# Which of these two classes has an instance variable and how do you know?
The Pizza class because the @ denotes instance variables you can also create instance objects
then call the instance_variables method to double check.
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# Question 6
# What could we add to the class below to access the instance variable @volume?
A getter method although you can directly call the instance variable with the instance_variable_get method

class Cube
attr_reader :volume
  def initialize(volume)
    @volume = volume
  end
end

#Question 7
What is the default return value of to_s when invoked on an object? Where could you go to find out if you want to be sure?
The implemenation of to_s in the object class
outputs the object's class and an encoding of the object id.

#Question 8

#You can see in the make_one_year_older method we have used self. What does self refer to here?
THe current instance of the class that called the make_one_year_older method.

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

#Question 9
#In the name of the cats_count method we have used self. What does self refer to in this context?
Self in this instance refers to the Cat class making cats_count a class method.
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end



#Question 10

#f we have the class below, what would you need to call to create a new instance
#of this class.
Bag.new(red, leather) Call Bag.new with a color argument and a material argument
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end
=end

