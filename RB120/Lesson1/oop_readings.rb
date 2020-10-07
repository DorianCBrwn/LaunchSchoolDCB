
class Vehicle
  
  @@number_of_vehicles = 0

  attr_accessor :color, :model
  attr_reader :year
 
  def initialize(year, color, model)
    @year =  year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "there are #{@@number_of_vehicles} objects in this program"
  end

  def current_speed
    puts "you are going #{@current_speed} mph."
  end

  def accelerate(num)
    @current_speed += num
    puts "You press the gas and are now going #{@current_speed} mph."
  end

  def brake(num)
    @current_speed -= num
    puts "You press the brake and are now going #{@current_speed} mph."
  end

  def turn_off
    @current_speed = 0
    puts 'Turning off the car'
  end

  def color_change(new_color)
    old_color = @color
    self.color = new_color
    puts "you changed the color of the car from #{old_color} to #{@color}"
  end

  def self.mpg_calculator(gallons, miles)
    mpg = miles / gallons
    puts "This car gets #{mpg} mpg."
  end

  def vehicle_age
    puts "Your #{self.model} is #{age} years old."
  end

  private

  def age
    current_year = Time.new.year
    current_year - self.year
  end

end


class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def to_s
    "Your car is a #{self.year} #{self.model} in #{self.color}."
  end
end

module Towable
  def tow_capacity(n)
    puts "This truck can tow #{n} pounds"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable

  def to_s
    "Your truck is a #{self.year} #{self.model} in #{self.color}."
  end
end

my_car = MyCar.new(2010, 'Silver', 'Bmw')
MyCar.mpg_calculator(23, 200)

my_truck = MyTruck.new(2020, 'Red', 'Toyota')

MyCar.ancestors
MyTruck.ancestors
Vehicle.ancestors

e90 = MyCar.new(1997, 'white', 'BMW')
e90.accelerate(10)
e90.current_speed
e90.accelerate(20)
e90.current_speed
e90.brake(20)
e90.current_speed
e90.brake(20)
e90.current_speed
e90.turn_off

MyCar.mpg_calculator(13, 351)
e90.color_change("red")
puts e90
e90.vehicle_age

class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  attr_reader :grade
end

bob = Student.new("Bob", 78)
joe = Student.new("Joe", 90)

puts "Well done!" if joe.better_grade_than?(bob)

