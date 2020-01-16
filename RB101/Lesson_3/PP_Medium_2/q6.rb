# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green"
end

color_valid('green')
color_valid('blue')
