=begin
#1. Inherited_Year
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  
end

class Car < Vehicle

end

truck1 = Truck.new(1994)
puts truck1.year

car1 = Car.new(2006)
puts car1.year

#2. Start the Engine(Part1)
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year)
    super
    start_engine
  end

  def start_engine
    puts 'Ready to go!'
  end
end

truck1 = Truck.new(1994)
puts truck1.year

#3. Only Pass the Year
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  attr_reader :bed_type
  def initialize(year, bed_type)
    super(year)
    @bed_type = bed_type
  end
end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type

#4. Start the Engine (part 2)
class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')

#5. Towable(Part 1)
module Towable
  def tow
    puts "I can tow a trailer"
  end
end

class Truck
  include Towable
end

class Car
end

truck1 = Truck.new
truck1.tow

#6. Towable (Part 2)
class Vehicle
  attr_reader :year
  def initialize(year)
    @year = year
  end
end

module Towable
  def tow
    'I can tow a trailer!'
  end
end

class Truck < Vehicle
  include Towable
end

class Car < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year
puts truck1.tow

car1 = Car.new(2006)
puts car1.year
#Method Lookup(Part 1)
class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color
#Cat
#Animal

#7. Method Lookup (part 2)
class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color
#Cat 
#Animal
#Object
#Kernel
#BasicObject
#8. Method Lookup (part 3)
module Flyable
  def fly
    "I'm flying!"
  end
end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
  include Flyable
end

bird1 = Bird.new('Red')
bird1.color
#Bird
#Flyable
#Animal
=end
#9. Transportation
module Transportation
  
class Vehicle
  attr_reader :year
  def initialize(year)
    @year = year
  end
end


class Truck < Vehicle
end

class Car < Vehicle
end
end
