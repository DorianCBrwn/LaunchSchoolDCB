=begin 
Problem:# Write a function called that takes a string of parentheses,
#  and determines if the order of the parentheses is valid.
#   The function should return true if the string is valid,
#    and false if it's invalid.
  Rephrase:  Check to make sure parentheses are matching
Examples/tests: 

INPUT: string
        contains parentheses

OUTPUT: boolean
Rules:
    Explicit: string always contains at least 1 parentheses
    Implicit:
        there must be an equal number of ( and ) parentheses

D: array

Approach:
# split the string into an array of characters
# iterate through the array
# find open brackets
#   for each open bracket find a matching closing bracket
#   remove pair from array and sent to temp array
#   if a bracket doesn't have a match return false
#
#   Iterate through array until first closing bracket
#   find a matching open bracket
#   remove both brackets from array add to temp array
#   compare size of temp array to original array
#   if temp array < original array return false

C:


=end

def valid_parentheses(parentheses)
  parentheses_arr = parentheses.chars
  temp_arr = []
  parentheses_arr.each do |paren|
    if paren == ")"
      temp_arr << [paren, parentheses_arr[parentheses_arr.index { |ele| ele == ")"}] ]
    elsif paren == "("
      temp_arr << paren
    end
  end
  temp_arr
end

# p valid_parentheses( "()" ) == true
# p valid_parentheses("(())((()())())") == true
p valid_parentheses("((())))(") == false
# p valid_parentheses("((())))(()") == false

# p valid_parentheses("(()(")
# "(())((()())())".size
# "((())))(".size
# "((())))(()".size

=begin 
Problem:# Given an array of strings made only from lowercase letters, return an array of all characters that show up in
all strings within the given array (including duplicates).  For example, if a character occurs 3 times in all strings
but not 4 times, you need to include that character three times in the final answer.


p common_chars(["bella","label","roller"]) == ["e", "l", "l"]
p common_chars(["cool","lock","cook"]) == ["c", "o"]
p common_chars(["hello","goodbye","booya", "random"]) == ["o"]
p common_chars(["aabbaaaa","ccdddddd","eeffee", "ggrrrrr", "yyyzzz"]) == []
  Rephrase: 
Examples/tests: 

INPUT:
OUTPUT:
Rules:
    Explicit:
    Implicit:

D: 

Approach:
C:
=end

# Write a function called that takes a string of parentheses,
#  and determines if the order of the parentheses is valid.
#   The function should return true if the string is valid,
#    and false if it's invalid.



# Given an array of strings made only from lowercase letters, return an array of
# all characters that show up in all strings within the given array (including
# duplicates).  For example, if a character occurs 3 times in all strings but
# not 4 times, you need to include that character three times in the final
# answer.


# take the first word

# iterate through the characters of that word

# check if all other words include this character and 
#  - if this is true
      # - delete that character  from all other words and add it to result array

# return result array

# p common_chars(["bella","label","roller"]) == ["e", "l", "l"]
# p common_chars(["cool","lock","cook"]) == ["c", "o"]
# p common_chars(["hello","goodbye","booya", "random"]) == ["o"]
# p common_chars(["aabbaaaa","ccdddddd","eeffee", "ggrrrrr", "yyyzzz"]) == []
