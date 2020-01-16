# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# map will return [nil, bear] because first map always returns an array that contains the 
# result of executing the block on each element of the given collection.
# In this case the value of 'ant' returned nil after it did not satisfy the conditional of the if statement
# bear was return because it did meet the condition of the if statement

