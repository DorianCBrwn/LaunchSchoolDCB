#Grocery List
=begin 
Problem:
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct
number of each fruit.
Examples/tests: 
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

INPUT: nested array 3 element array
      - each inner array contains 
          1 word string in first index
          int in second index

OUTPUT: array of strings
Rules:
    Explicit: 
    Implicit: order of inner words does not change

D: Array

Approach: 
Define method buy_fruit with parameter groceries
define variable result
Iterate through array groceries
  for each inner item 
  push item[0] to result item[1] times
return result
C:
=end
def buy_fruit(groceries)
  result = []
  groceries.each do |item|
    item.last.times { result << item.first }
  end
  result
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
