#What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

#Shift will remove the first key, value pair from the hash and return it as a new array with 2 elements
#shift is destructive
#=> [a: ,'ant'] 
#This can be confirmed in the docs
