=begin
Problem: Write a program that, given a natural number and a set of one or more other numbers, can find the sum of all the multiples of the numbers in the set that are less than the first number.
Rephrase:
Examples/tests:
INPUT: List of integer values, limiting value integer
OUTPUT: Integer
Rules:
  Explicit:

  Implicit:
  We might be given a list of numbers for which we want to find the multiples, or we might not.
    If we are, we should use them as specififed.
    If we are not given the list, use 3 and 5 as the default list.
  We are also given a limiting value. We need to sum all of the multiples of the numbers in the list up to, but not including, the limiting value.

D:Range to store numbers upto limit
Array to store multiples
array to store list
Approach:
Iterate through list of numbers or default list if no list given
create arr multiples
Iterate from current list number upto but not including limit
for each value check if  current list number % value == 0
  push value to multiples arr
else move to next values
Remove duplicates from multiples array.
Find sum of multiples array
C:
=end
class SumOfMultiples
  def initialize(*list)
    @list = list
  end

  def to(limit)
    @list = [3, 5] if @list.empty?
    multiples = []
    @list.each do |list_num|
      list_num.upto(limit - 1) do |value|
        multiples << value if (value % list_num).zero?
      end
    end
      multiples.uniq.sum
  end

  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end

end
