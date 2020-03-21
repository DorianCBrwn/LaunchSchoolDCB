# Madlibs
=begin 
Problem:
Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then
construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a
story that you create.

Examples/tests: 

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

INPUT:
OUTPUT:
Rules:
    Explicit:
    Implicit:

D: 

Approach:
-Define method madlib
-set variable words to hash {noun:nil verb:nil adjective:nil adverb:nil}
-set user_input ='' 
- iterate through word.keys
  - for each word 
    -puts Enter a #{word}:
    -get user input 
    -words[word] = user input 
Puts One day a adjective noun verb over very adverb and had a great time.
C:
=end

def madlib
word_bank = { noun: nil, verb: nil, adjective: nil, adverb: nil }
word_bank.keys.each do |word|
  puts "Enter a #{word}"
  word_bank[word] = gets.chomp
end

end

madlib


