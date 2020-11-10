=begin
#Question 1
class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

Alyssa glanced over the code quickly and said - "It looks fine, except that you forgot to put the @ before balance when
you refer to the balance instance variable in the body of the positive_balance? method."

"Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing an @!"

Who is right, Ben or Alyssa, and why?

# Ben is correct because he is using the balance method created by the attr_reader

#Question 2
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

#Alyssa looked at the code and spotted a mistake. "This will fail when update_quantity is called", she says.

Can you spot the mistake and how to address it?

#This will fail because the update_quantity method is trying to set the quantity instance variable but is actually
#setting a local variable to updated_count because update_quantity does not have access to the instance variable
#@quantity as it is presently written
#to fix this we can change quantity to @quantity or create an attr_accessor for quantity and use the setter method with
#self.quantity


#Question 3
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

# Alyssa noticed that this will fail when update_quantity is called. Since quantity is an instance variable, it must be
# accessed with the @quantity notation when setting it. One way to fix this is to change attr_reader to attr_accessor and
#   change quantity to self.quantity.
# Is there anything wrong with fixing it this way?
# One potential draw back is quantity can now be changed because using a attr_reader leaves the data exposed and subject
# to change with the setter method.


#Question 4
# Create a class called Greeting with a single instance method called greet that takes a string argument and prints that
# argument to the terminal.

# Now create two other classes that are derived from Greeting: one called Hello and one called Goodbye. The Hello class
# should have a hi method that takes no arguments and prints "Hello". The Goodbye class should have a bye method to say
# "Goodbye". Make use of the Greeting class greet method when implementing the Hello and Goodbye classes - do not use any
# puts in the Hello or Goodbye classes.

class Greeting

  def greet(string)
    puts string
  end
end

class Hello < Greeting
  def hi
    greet('Hello')
  end
end

class Goodbye < Greeting
  def bye 
    greet('Goodbye')
  end
end


=end
#Question 5
class KrispyKreme
  attr_reader :filling_type, :glazing

  def is_plain?(filling)
     filling.nil?
  end

  def has_glazing?
    self.glazing.nil?
  end

  def initialize(filling_type, glazing)
    @filling_type =  is_plain?(filling_type) ? 'Plain' : filling_type
    @glazing = glazing
  end


  def to_s
    has_glazing? ? "#{filling_type}" : "#{filling_type} with #{glazing}"
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
puts donut2
puts donut3
puts donut4
puts donut5

# Question 6
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

# What is the difference in the way the code works?
# The first Computer class directly assigns the instance variable template in the create template method
# In the show template method it usess the attr_accessor getter method
# IN the second Computer class both the create_template and Show_template methods use the getter and setter methods
# provided by attr_accessor
# Question 7
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.light_status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end
# How could you change the method name below so that the method name is more clear and less repetitive?
#change it to self.status so when called it won't appear as Light.light_status.
