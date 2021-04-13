a = [1, 2, 3]

# Example of a method definition that  does not modify its argument permanently
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
p no_mutate(a)
p "After no_mutate method: #{a}"



