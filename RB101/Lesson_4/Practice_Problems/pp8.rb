# What happens when we modify an array while we are iterating over it? 
#   The iterator keeps iterating over the available values
# What would be output by this code?
#   1, 3 because 2 and 4 are skipped due to the number in front of them being removed
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
