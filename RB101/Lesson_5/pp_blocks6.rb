# One of the most frequently used real-world string properties is that of "string 
# substitution", where we take a hard-coded string and modify it with various 
# parameters from our program.
# Given this previously seen family hash, print out the name, age and gender 
# of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin 
Rephrase: 
Basic example: "Herman is a 32-year-old male"
P INPUT: Hash
  OUTPUT: String
  Rules: Explicit: Hash is given
                   All outer keys and inner values must be used
                   template for output is provided
Approach: Iterate through Hash
          Output the name and details of the inner hash during each iteration
E -
D 
A 
C 
=end

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}"
end

