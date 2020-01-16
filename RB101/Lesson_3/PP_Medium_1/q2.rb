# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
#
#A type error will occur because you cannot add a string to an integer in this fashion.
#To solve this issue the result of 40 + 2 must be converted into a string using the to_s method
#
puts "the value of 40 + 2 is " + (40 + 2).to_s

# >> the value of 40 + 2 is 42
