# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

=begin 
Rephrase: 
Basic example: 
P INPUT: Hash
  OUTPUT: Display string
  Rules: Use each
         Vowels must be from the strings in the hash
Approach: Initialize results array
          Iterate through hash 
          Iterate through each value array 
          If words in array contain vowels output the vowel
          Output the vowels_arr
E -
D hash,array
A 
C 
=end
hsh.each do |key, string_arr|
  string_arr.each do |word|
   puts word.chars.select {|v| v =~ /[aeiou]/ }
  end
end
