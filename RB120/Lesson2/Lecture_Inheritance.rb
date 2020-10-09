=begin
#1.
class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

teddy = Dog.new
bruno = Bulldog.new
puts teddy.speak
puts bruno.speak
puts teddy.swim
puts bruno.swim
=end
#
#2.
class Pet

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

pete.run
pete.speak

kitty.run
kitty.speak
kitty.fetch

dave.speak

bud.run
bud.swim
