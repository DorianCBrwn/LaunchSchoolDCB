#Right Triangles
=begin 
Problem:
Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.
  Rephrase: 
Examples/tests: 
triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

INPUT: integer
OUTPUT:
outputed * to form a triangle

Rules:
    Explicit: Output char == *
    Implicit:
      Pattern of 4 space 1 star
                 3 space 2 star
                 2 space 3 star
                 1 space 4 star
                 0 space 5 star
    Each line is an inverse of spaces to * up to the given number
    spaces start at given value - 1
    star starts at 1

D: String 

Approach:
 define method triangle with parameter stars
 set spaces to stars - 1
 set counter to 0
 iterate upto stars
  increment counter
  put  out spaces + counter

  
C:
=end

def triangle(stars)
  spaces = stars - 1
  counter = 1

  stars.times do
    puts ' ' * spaces + '*' * counter
    counter += 1
    spaces -= 1
  end

end


triangle(9)
