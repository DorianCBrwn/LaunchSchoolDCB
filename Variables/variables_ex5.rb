=begin
x = 0
3.times do
  x += 1
end
puts x
=end

y = 0
3.times do
  y += 1
  x = y
end
puts x

puts 'The first code block runs correctly becauase x is defined outside the scope of the block, thus it can be accessed outside.'
puts 'The second code block produces an error because x was defined in an inner scope and is trying to be accessed outside of that scope.'
