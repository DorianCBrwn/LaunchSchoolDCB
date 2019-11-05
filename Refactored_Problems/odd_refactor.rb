#Given one integer argument, return true if the integers absolute value is odd

def is_odd?(int)
  int.abs / 2 != 0
end

puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)
