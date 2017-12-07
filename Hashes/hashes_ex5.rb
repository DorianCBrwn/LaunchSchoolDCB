#has_value?

user = {f_name: 'Sarah', l_name: 'Gregory', occupation: 'scientist', hobbies: 'sudoku'}

puts user[:f_name].capitalize + " must be good with numbers." if user.has_value?('sudoku')
