# Practice Problem 4

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}




=begin
P  Return the lowest value from the hash
  INPUT: Hash
  OUTPUT: Int
E {"Herman" => 32, "Lily" => 30,} => 30
D Hash, Array
A  Approach: Iterate through the array and compare the current 
             value to the next value, then keeping track of which value 
             is smaller in each iteration

             

  PsuedoCode:
             Get an array of values from the hash
             Sort array from lowest to greatest
             Return lowest value
C
 
=end

ages.values.min  # => 10
