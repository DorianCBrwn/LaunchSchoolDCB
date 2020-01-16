# Practice Problem 3

# In the age hash remove people with age 100 and greater.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

 

=begin
P  remove all key- values pairs whose values are >= 100
  INPUT: hash 
  OUTPUT: hash
E  {first: 10, second: 200, third: 40} 
    => {first: 10, third: 40}
D hash
A Iterate through the hash
  Check each value
  If the value is greater or equal to 100 
  Remove the value from the hash
  Return modified hash

C
=end

 ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
younger_people = ages.select do |name, age|
   age <= 100
 end

younger_people
