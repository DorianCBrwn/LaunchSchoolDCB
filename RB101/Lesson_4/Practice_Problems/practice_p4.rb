['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#{a => ant, b => bear , c => cat }
# each with object takes in an object and returns the object with the return value of 
# block. In this case a hash was passed in. For each iteration the key of the hash was set 
# to value[0] and each value was set to value.

