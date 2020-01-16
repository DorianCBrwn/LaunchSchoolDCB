# input: []
# output: print 5 random numbers

# Rules
# Explicit: 
# 1. print random numbers between 0 - 99
# 2. output is printed to screen

numbers = []

while numbers.size < 5
  numbers << rand(100)
  puts numbers.last
end
