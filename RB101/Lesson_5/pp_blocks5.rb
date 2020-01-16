# Given this nested Hash: figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin 
Rephrase: Add up the total age of all the hash with the value 'male'
Basic example: 
  "Herman" => { "age" => 32, "gender" => "male" }, "Grandpa" => { "age" => 402, "gender" => "male" }, => 434
P INPUT: 2 layer hash 
  OUTPUT: integer
  Rules: Specific hash is given 
         Each hash has the same keys 
Approach:
  Iternate through hash, if inner value gender is male; add the value to a total number accumulator
Steps: Initialize total_age variable to hold result 
      Iterate through Munsters outer hash
      Iterate through each value of hash
      If value[key] is equal to male, add value of age to total_age
      Return total age
E -
D Hash, Hash, Int
A 
C 
=end

total_age = 0

munsters.each do |k, v|
  total_age += v['age'] if v['gender'] == 'male'
end

total_age
