# What is the block's return value in the following code? 
# How is it determined? 
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The blocks return value will be true  because num.odd? will be called on each 
# element of the array [1, 2 ,3] since the return value is determined by the last value in a block
# the return value of any is true and the block will out put 1 because any stops iterating after when it returns true. 
