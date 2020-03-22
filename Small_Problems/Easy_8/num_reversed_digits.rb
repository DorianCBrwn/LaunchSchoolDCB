#Convert number to reversed array of digits

=begin 
Problem:
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results.
For similar reasons, the return value for our fourth example doesn't have any leading zeros.
  Rephrase: 
Examples/tests: 

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

INPUT: integer
        1+ digits 
OUTPUT:
        integer 
        1+ digit
Rules:
    Explicit:
            Ignore leading 0 in output
    Implicit:

D: Array

Approach:
Define method reversed_number with parameter int
Convert number to string.
Reverse string
return string converted to int
C:
=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
