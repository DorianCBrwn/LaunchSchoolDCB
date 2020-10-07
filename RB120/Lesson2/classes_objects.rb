##
##Ex.1
#class Person
#  attr_accessor :name

#  def initialize(name)
#    @name = name
#  end
#end


#bob = Person.new('bob')
#bob.name
#bob.name = 'Robert'
#bob.name

#Ex.2

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(name)
#     @first_name = name
#     @last_name = ""
#   end

#   def name
#     name = "#{first_name} #{last_name}"
#     name
#   end
# end

# bob = Person.new('Robert')
# bob.name
# bob.first_name
# bob.last_name
# bob.last_name = 'Smith'
# bob.name

#Ex.3

class Person
  attr_accessor :first_name, :last_name

  def build_full_name(name)
    name = name.split
    @first_name = name.first
    @last_name = name.size > 1 ? name.last : ''
  end

  def initialize(name)
    build_full_name(name)
  end

  def name
    name = "#{first_name} #{last_name}"
    name
  end

  def name=(name)
    build_full_name(name)
  end

  def to_s
    name
  end
end


bob = Person.new('Robert')
bob.name
bob.first_name
bob.last_name
bob.last_name = 'Smith'
bob.name

bob.name = "John Adams"
bob.first_name
bob.last_name

# Ex.4
bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')
bob.eql?(rob) # not true equivalnce 

#Use name to compare since object based comparison has not been implemented
bob.name == rob.name

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

