
[1, 2, 3].select do |num|
  num > 5
  'hi'
end


#select will return [1,2,3] because it checks the truethiness of the last value evalued in the block
#the truthyness of 'hi' is true.
