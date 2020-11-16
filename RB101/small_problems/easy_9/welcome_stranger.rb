# Welcome Stranger
=begin 
Problem:
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when
combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the
person's title and occupation.
  Rephrase: 
Examples/tests: 
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

INPUT:
      Array 
        containing two or more elements 
      Hash containg 
        2 key value pairs
OUTPUT: String
        - containing values from input string and hash 
Rules:
    Explicit:
    Implicit:

D: String interpolation

Approach:
Define method greeting with parameters str and hsh
Set variable full_name to array converted into a string separated by spaces
Return string with full_name and hash keys interpolated in correct positions

C:
=end

def greetings(str, hsh)
  full_name = str.join(' ')
  puts "Hello, #{full_name} ! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
