# Build a program that asks a user for the length and width of a room in meters,
# Ask for the input measurements in feet, and display the results in
# square feet, square inches, and square centimeters.
SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCENTIMETER = 0.0010764
SQFEET_TO_SQMETERS = 10.7639

def room_sq(l, w)
  l * w.round(2)
end

def convert_ft(number, unit)
  result = case unit
           when 'inch'
             number * SQFEET_TO_SQINCH
           when 'm'
             number / SQFEET_TO_SQMETERS
           when 'cm'
             number / SQFEET_TO_SQCENTIMETER
           end
  result.round(2)
end

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f
sq_feet = room_sq(length, width)
sq_meters = convert_ft(sq_feet, 'm')
puts "The area of the room is #{sq_meters} square meters" \
"(#{sq_feet} square feet)," \
"(#{convert_ft(sq_feet, 'inch')} square inches)," \
"(#{convert_ft(sq_feet, 'cm')} square centimeters)."
