# Practice Problems 16
# Write a method that returns one UUID when called with no parameters.

=begin 
Rephrase: 
Basic example: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
P INPUT: 
  OUTPUT: String
  Rules: 
        Explicit: UUID consists of 32 hexadecimal characters
                  UUID's are random
                  They are broken into sections 8-4-4-4-12

        Inplicit: all letters are lower case
                  letters and numbers can repeat
Approach:
         Create an array of letters
         Create an array of numbers
         Combine them into a single array
         Create a nested array containing an array of hashes that correspond to
         each section of the UUID
         set each value to n random elements from the UUID array
         convert values to strings
         convert array to a string 
         use "-" to separate sections
Steps:
      DEFINE METHOD taking no arguments
      Initialize hex_char array 
      Initialize UUID string
      Initialize array containing range of numbers from 0-9
      Initialize arra containing range of letters from 'a'-'z'
      Set hex_char to combined number and letter arrays
      Intitialize 2 dimentional, 5 element array 
      Set each element to a Hash
      Set each key to a symbol identify and each value to a sample of hex_char
        each sample will be n chacters where n = number of characters in each section
      Convert values in hash to string
      iterate through nested array
        Combine each value to create a single string
      return UUID
E - "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
D Array, Array, Hash, Array
A 
C 
=end
def create_UUID
  hex_arr = ('a'..'f').to_a | (1..9).to_a
  first = hex_arr.sample(8).join
  second = hex_arr.sample(4).join
  third = hex_arr.sample(4).join
  fourth = hex_arr.sample(4).join
  last = hex_arr.sample(12).join

  uuid = "#{first}-#{second}-#{third}-#{fourth}-#{last}"
  end
create_UUID
