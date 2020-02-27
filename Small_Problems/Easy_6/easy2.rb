#Delete vowels

=begin 
Problem: Write a method that takes an array of strings, and returns an array of
the same string values, except with the vowels (a, e, i, o, u) removed.
  Rephrase: 
Examples/tests: 
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

INPUT: array 
        -each element is a string
        -string contains
          -Alpha Characters
          -upper and lower case
OUTPUT: array 
        -each element is a string
        -string contains
          -Alpha Characters
          -upper and lower case
Rules:
    Explicit: All vowels [AEIOU] are removed from output
              
    Implicit: Y is never a vowel 
              if string contains only vowels, return empty string

D: Array 

Approach:
  Initalize method remove_vowels with parameter str_arr
  Iterate through array 
    For each element select all letters who do not match AEIOU
  Return new array with selected values 
C:
=end

def remove_vowels(str_arr)
  result = []
  str_arr.each do |string|
  result << string.chars.reject{|letter| letter =~ /[aeiou]/i }.join
  end
  result
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
