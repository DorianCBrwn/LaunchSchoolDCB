#Practice Problem 2

#Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

=begin
P  Return the sum of the values from the ages hash
  INPUT: hash 
  OUTPUT: int
E  {first: 10, second: 20} = 30
D  array
A  
  Get the values from the hash
  Sum the values 
  Return the sum
C
=end

values = ages.values.inject(:+)
















