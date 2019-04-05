# Build a program that asks a user for the length and width of a room in meters,
# and then displays the area of the room in both square meters and square feet.
# 1 square meter == 10.7639 square feet
# SQMETERS_TO_SQFEET = 10.7639

def room_sq(l, w)
  l * w
end

def m_to_f(meters)
  meters * 10.7639
end

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_i

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_i
sq_meters = room_sq(length, width)
sq_feet = m_to_f(sq_meters)
puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."
