=begin
#Fix the Program - Mailable

module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  attr_reader :name, :address, :city, :state, :zipcode
  include Mailable
end

class Employee
  attr_reader :name, :address, :city, :state, :zipcode
  include Mailable
end

betty = Customer.new
bob = Employee.new
betty.print_address
bob.print_address

#Fix the Program - Drivable
module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive

#Complete the Program - House

class House
  attr_reader :price
  include Comparable
  def initialize(price)
    @price = price
  end

  def <=>(other_house)
    price <=> other_house.price
  end

  
  
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

#Reverse Engineerin
class Transform 

  def initialize(string)
    @string = string
  end

  def uppercase
    @string.upcase
  end

  def self.lowercase(string)
    string.downcase
  end
end


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
#
#What will this do?
class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata
# Outputs: 'ByeBye'
puts thing.dupdata
# Outputs: 'HelloHello'

# Comparing Wallets

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  protected
  attr_reader :amount
  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end
#
# Pet Shelter
class Pet

  attr_reader :species, :name

  def initialize(species, name)
    @name = name
    @species = species
  end

   def to_s
    "a #{species} named #{name}"
  end
end

class Owner

  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter

  attr_accessor :owners
  def initialize
    @owners = {}
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    owners[owner.name] ||= owner #review line
  end

  def print_adoptions
    owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
    end
  end

  
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
# Fix the Program - Expander
class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander
# Will not work in ruby versions lower than 2.7 because of explicit call to private method expand on line 221
# Remove self
#

=end
# Moving
module Moveable
  def walk
    "#{name} #{gait} foward"
  end
end

class Person
  attr_reader :name

include Moveable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

include Moveable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name

include Moveable

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end


mike = Person.new("Mike")
mike.walk

kitty = Cat.new("Kitty")
kitty.walk

flash = Cheetah.new("Flash")
flash.walk

#
#Nobility

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def walk 
    "#{title} #{super}"
  end

  def gait
    "struts"
  end
end

byron = Noble.new("Byron", "Lord")
Noble.ancestors
p byron.walk
byron.title
