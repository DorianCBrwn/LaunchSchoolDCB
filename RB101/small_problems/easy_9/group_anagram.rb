# Source: [Launch School - an online school for Software Engineers](https://launchschool.com/exercises/3e3f841c)
# Problem:Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
# Rephrase:
# Examples/tests:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
# INPUT: Array of words
# OUTPUT: print arrays containing anagrams
# Rules: Anagram is a word with the same letters but in a different order
#   Explicit:
#   Implicit:
# D:
# Approach:
# Iterate through
# C:
#

words = %w[demo none tied evil dome mode live
           fowl veil wolf diet vile edit tide
           flow neon]

def find_anagrams(word_key, arr)
  result = []
  arr.each do |word|
    result << word if word.chars.sort == word_key.chars.sort
  end
  result
end

def group_anagrams(arr)
  groups = []

  arr.each do |word|
    groups << find_anagrams(word, arr)
  end
  groups.uniq
end

group_anagrams(words).each do |group|
  puts group, '------'
end
