# Displays when the user will retire and how many years
# They have to work till retirement.

current_year = Time.now.year
puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i
retire_year = current_year + retire_age
years_left = retire_age - age

puts "It's #{current_year}. You will retire in #{retire_year}.\n
You have only #{years_left} years of work to go!"
