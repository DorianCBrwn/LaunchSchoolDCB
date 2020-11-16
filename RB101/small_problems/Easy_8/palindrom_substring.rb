# Palindromic Substrings
=begin 
Problem:
Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must
consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the
same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a
palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

INPUT: string contains:
        -alpha and symbol characters
        separated by space or symbols
OUTPUT:
      array containing
      sub substrings
        -2+ alpha and symbol characters
        
Rules:
    Explicit: 
      Palindroms are case sensitive
      Must start and end with the same character
    Implicit:

D:array
comparison 

Approach:
define method palindromes with parameter string
set variable arr to return value of substring
select values from arr whose elements are equivalent fowards and backwards
return selected values
C:
=end

def substrings_at_start(str)
  str.chars.map.with_index { |_, idx| str[0, idx + 1] }
end

def substrings(string)
  sub_strs = []
  0.upto(string.size - 1) do
    sub_strs << substrings_at_start(string)
    string = string.chars.drop(1).join
  end
  sub_strs.flatten
end

def palindromes(string)
 arr =  substrings(string)
 arr.delete_if{ |ele| ele.size <= 1 }.select { |sub_s| sub_s == sub_s.reverse }
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
