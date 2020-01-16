# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil] 
# map returns an array that contatins the output of the block on each element
# in the first iteration 1 is not greater than 1 so num is returned with = 1
# in the second iteration 2 is greater than 1 and puts is called, however the return value of puts is nil
# in the third iteration 3 is greater than 1 and puts is called again and again the return value of puts is nil.
