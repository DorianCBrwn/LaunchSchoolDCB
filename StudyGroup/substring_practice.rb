=begin 
Problem:
For a given nonempty string s find a minimum substring t and the maximum number
k, such that the entire string s is equal to t repeated k times. The input
string consists of lowercase latin letters. Your function should return a tuple
(in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]
  Rephrase: Return array containing the smallested substring that can be repeated k times
Examples/tests: 
Example #1:
for string
s = "ababab" the answer is ["ab", 3] 
Example #2:
for string
s = "abcde" the answer is because for this string "abcde" the minimum substring t, such that s is t
repeated k times, is itself.

INPUT: string
OUTPUT: array containing string and int
Rules:
    Explicit: 
    Implicit:

D: 
Array
Approach:
Create result array
Store possible substrings of string in array
Multiply each substring by 0 - string.size
Push substring and multiple to result array when substring * multiple = string

C:
=end
def f(str)
  substrings = []
  (0...str.length).each do |start_pt|
    (start_pt...str.length).each do |end_pt|
      substrings << str[start_pt..end_pt]
    end
  end
  0.upto(string.size) do |mult|
    
    substrings.each do | 
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
