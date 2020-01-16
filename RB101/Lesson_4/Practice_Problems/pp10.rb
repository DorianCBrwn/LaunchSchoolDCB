# Practice Problem 10

# Given the munsters hash below

 munsters = {
   "Herman" => { "age" => 32, "gender" => "male" },
   "Lily" => { "age" => 30, "gender" => "female" },
   "Grandpa" => { "age" => 402, "gender" => "male" },
   "Eddie" => { "age" => 10, "gender" => "male" },
   "Marilyn" => { "age" => 23, "gender" => "female"}
 }
# Modify the hash such that each member of the Munster family has an additional 
# "age_group" key that has one of three values describing the age group the 
# family member is in (kid, adult, or senior). Your solution should produce 
# the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "mae", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
#
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 
# and a senior is aged 65+.l


 # P Update the given hash by adding a new key value pair.
#   INPUT: Hash
#   OUTPUT: Hash
# E 
# D Hash
# A 
#   Approach: Iterate through the hash. For each iteration add the age group key
 #    Set the value to of the key

#   Psuedo Code:
#               Given array flintstones
#               Set result to {}
#               Set Counter to 0

#               Loop
#               Set result[flintstones[counter] is equal to counter
#               End
#               Return result

# C result = flintstones.each_with_object({}) do |element,hash|
#             hash[element] = flintstones.index(element)
#             end
