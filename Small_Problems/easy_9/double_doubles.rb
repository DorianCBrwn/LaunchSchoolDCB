# Double Doubles
=begin 
Problem:
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side
digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

  Rephrase: 
Examples/tests: 

INPUT: Integer
        1+ digits
OUTPUT: Integer
        1+ digits
Rules:
    Explicit:
            Double numbers must have an even amount of digits
            the left and right side digits must be equal
    Implicit:

D: Array

Approach:
Define method double_num? with parameter number
Convert number to array of digits
define variable midpoint arr.size /2.0.ceil
compare 1st half of array to 2nd half of array 
If Double_number returns true return the number
Else if double_number is false return the number * 2

C:
=end
def double_num?(number)
  num_arr = number.digits.reverse
  midpoint = (num_arr.size / 2.0).ceil
  num_arr[0, midpoint] == num_arr[midpoint, num_arr.size - midpoint]
end

def twice(number)
  double_num?(number) ? number : number * 2
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
