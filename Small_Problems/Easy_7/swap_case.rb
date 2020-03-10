# frozen_string_literal: true

# Swap Case
#
# Problem:
# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced
# by its lowercase version, and every lowercase letter by its uppercase version.
# All other characters should be unchanged.
#
# You may not use String#swapcase; write your own version of this method.
#
#   Rephrase:
# Examples/tests:
#   swapcase('CamelCase') == 'cAMELcASE'
#   swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#
# INPUT: string
#         contains alpha characters
#         various cases
# OUTPUT:
#         string
# Rules:
#     Explicit:
#     Implicit:
#
# D: Array
#
# Approach: Define method swapcase with parameter string
#   create an array of chars
#   for each char if char matches uppercase char call downcase
#   for each char if char matches lowercase char call upcasecase
#   else return char
#   join words
# C:

def swapcase(string)
  swapped_string = string.chars.map do |letter|
    case letter
    when /[A-Z]/ then letter.downcase
    when /[a-z]/ then letter.upcase
    else letter
    end
  end
  swapped_string.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
