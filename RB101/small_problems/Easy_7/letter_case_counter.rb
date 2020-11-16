# Lettercase Counter
=begin
Problem:
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of
characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one
the number of characters that are neither.

  Rephrase:
Examples/tests:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

INPUT: String
  contains 0+
    numbers, letters or symbols
    upper and lower case
    can be empty
OUTPUT:
  hash
  3 keys lowercase, uppercase, neither
  values are occurance of each type of key in string
Rules:
    Explicit:
    Implicit:

D: Array
  Enumberable / count

Approach:
 define method letter_case_count with parameter string
 Create char_counts hash with lowercase: 0, uppercase: 0, neither: 0
 create a new array from string
 iterate through array
  if current element is a lowercase value add 1 to lowercase hash value
  if current element is a uppercase value add 1 to lowercase hash value
  else add 1 to neither hash value
C:
=end
def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    case char
    when ('a'..'z') then result[:lowercase] += 1
    when ('A'..'Z') then result[:uppercase] += 1
    else result[:neither] += 1
    end
  end
  result
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
