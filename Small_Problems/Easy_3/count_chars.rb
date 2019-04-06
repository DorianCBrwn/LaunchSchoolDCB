# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

print "Please write word or multiple words: "
user_input = gets.chomp

char_count = user_input.delete(" ").length
puts "There are #{char_count} characters in \"#{user_input}\"."
