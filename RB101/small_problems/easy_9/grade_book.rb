# Grade book
=begin 
Problem:
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value
associated with that grade.
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
  Rephrase: 
Examples/tests: 

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

INPUT: 3 integers
        between 0 - 100
OUTPUT: String
        -containing 1 Apha character
Rules:
    Explicit:
    Implicit:

D: Array
  -sum

Approach:
define method get_grade with parameters score_1 score_2 score_2
set variable avg = sum of scores / 3
If avg is with in the following range return the corrisponding letter
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'

C:
=end

def get_grade(score1, score2, score3)
  avg = [score1, score2, score3].sum / 3
  case avg
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  when (0...60) then 'F'
  end
end


get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
