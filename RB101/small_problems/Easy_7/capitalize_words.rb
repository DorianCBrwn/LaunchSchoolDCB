# Capitalize Words
=begin 
Problem:
Write a method that takes a single String argument and returns a new string that contains the original value of the
argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
  Rephrase: 
Examples/tests: 
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


INPUT: String
OUTPUT: String
Rules:
    Explicit:
    Implicit:

D: Array

Approach:
Define method word_Cap with parameter string
Iterate through string 
  for each word call capitalize method
Return new string
C:
=end

def word_cap(string)
  string.split.map(&:capitalize).join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

