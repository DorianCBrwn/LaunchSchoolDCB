# frozen_string_literal: true

# Fizzbuzz

#
# Problem:
#
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print
# out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by
# 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
#
#   Rephrase: Given two numbers output a range from the first number to the last number,
#             if a number is divisible by 3 replace it with fizz if the number is divisible by 5
#             replace it with buzz
#             if divisible by 3 and 5 replace with fizzbuzz
# Examples/tests:
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
#
# INPUT: 2 integers
#         1st is lower than 2nd number
#     * How should an incorrect number of arguments be handled
# OUTPUT:
#         Print output
# Rules:
#     Explicit:
#           -numbers divisible by 3 are replaced by fizz
#           -numbers divisible by 5 are replaced by buzz
#           -numbers divisible by 5 and 3 are replaced by fizzbuzz
#     Implicit:
#
# D: array
#
# Approach:
#
# define method fizzbuzz with parameters start_int and end_int
# Iterate from start_int to end_int
#   for each interation print the current value
#   if the value is divisble by 3 and 5 print FizzBuzz
#   if the value is divisible by 3 print Fizz
#   if the value is divisible by 5 print Buzz
#   else print the value
# C:

def fizzbuzz(start_int, end_int)
  result = []
  start_int.upto(end_int) do |num|
    if (num % 3).zero? && (num % 5).zero?
      result << 'FizzBuzz'
    elsif (num % 3).zero?
      result << 'Fizz'
    elsif (num % 5).zero?
      result << 'Buzz'
    else result << num.to_s
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
