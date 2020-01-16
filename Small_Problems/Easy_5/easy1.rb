# ASCII String Value 
#
# Write a method that determines and returns the ASCII string
# value of a string that is passed in as an argument. The ASCII string value is
# the sum of the ASCII values of every character in the string. You may use
# String#ord to determine the ASCII value of a character.

=begin 
Rephrase: Create a method that accepts a string. Return an int that is the sum
          of all the ASCII values of each character in the given string
Basic example: ascii_value('Four score') == 984
P INPUT: string
  OUTPUT: int
  Rules:
        Explicit:
                  given a string
                  string may be empty
                  return much be a single int
        Inplcit:
Approach:
        Define Method ascii_value
        Initialize result_int to 0
        Convert given string into array of chars.
        Iterate through returned chars array and convert strings to ints
        Sum values in array 
        Set sum to result_int

E -
D 
A 
C 
=end

def ascii_value(string)
  if string.empty?                      # => false, false, false, true
    0                                   # => 0
  else
    string.chars.map(&:ord).inject(:+)  # => 984, 1251, 97
  end                                   # => 984, 1251, 97, 0
end                                     # => :ascii_value

ascii_value('Four score') == 984      # => true
ascii_value('Launch School') == 1251  # => true
ascii_value('a') == 97                # => true
ascii_value('') == 0                  # => true

___________________________________________________________________________

