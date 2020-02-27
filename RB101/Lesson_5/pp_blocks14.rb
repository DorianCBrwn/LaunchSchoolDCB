# frozen_string_literal: true

# Practice Problem 14 
# Given this data structure write some code to return an array
# containing the colors of the fruits and the sizes of the vegetables. The sizes
# should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# P  E  D  A  C
# Rephrase:
# Example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# INPUT: 
#   Nested hash
#   keys: symbols 
#   values: strings, array of strings
# OUTPUT:
#   multi-dimentional array
#     colors are capitalized
#     sizes are upcased
# Rules:
#     Explicit:
#     Implicit:
#       colors are in arrays
#       sizes are strings
# D: Array
# Approach:
#   Iterate through hash
#     For each value select size if type: == vegetable else select colors if
#     type == fruit 
# pC:

hsh.map do |k,v|
  case v[:type]
  when 'fruit' then v[:colors].map(&:capitalize)
  when 'vegetable' then v[:size].upcase
  end
 end
