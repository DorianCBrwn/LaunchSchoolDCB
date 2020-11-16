def how_old(name = 'Teddy')
  "#{name} is #{rand(20..200)} years old!"
end

puts 'Whose age do you want to know?'
name = gets.chomp
puts how_old(name)
