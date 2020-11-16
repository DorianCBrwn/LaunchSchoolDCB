# frozen_string_literal: true

# Staggered Caps (Part 2)
#
# Problem:
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should
# uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they
# just don't count when toggling the desired case.
#
# Examples/tests:
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#
#
# Approach:
# Define method staggered_case with parameter string
# convert string into an array of chars
# Iterate through each char with index
#   for each letter make uppercase if index + 1 is odd and char is an alpha character
#   else make lowercase
#   join letters
# C:

def staggered_case(string)
  result_string = ''
  toggle_flag = true
  string.chars.each do |letter|
    if letter =~ /[a-z]/i
      if toggle_flag
        result_string += letter.upcase
      else
        result_string += letter.downcase
      end
      toggle_flag = !toggle_flag
    else
      result_string += letter
    end
  end
  result_string
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
