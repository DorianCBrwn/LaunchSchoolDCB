# Practice Problem 14 Given this data structure write some code to return an array
# containing the colors of the fruits and the sizes of the vegetables. The sizes
# should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

=begin 
Rephrase: 
Basic example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
P INPUT: nested hash
  OUTPUT: array
  Rules:
        Only return colors and sizes of the vegetables
        Colors are in arrays
        sizes are stored as strings
        each hash has the same hash structure
Approach:

E -
D 
A 
C 
=end

