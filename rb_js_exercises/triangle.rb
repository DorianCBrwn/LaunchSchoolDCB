=begin
Problem: Write a program to determine whether a triangle is equilateral, isosceles, or scalene.
Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
        - To be a valid triangle, each side length must be greater than 0.
        - To be a valid triangle, the sum of the lengths of any two sides must be greater than or equal to the length of the remaining side.

        - An equilateral triangle has three sides of equal length.
        - An isosceles triangle has exactly two sides of the equal length.
        - A scalene triangle has three sides of unequal length (no two sides have equal length).


  Implicit:
D:
Array
Approach:
C:
=end
class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1,s2,s3)
    @s1, @s2, @s3 = s1, s2, s3
    @sides = [s1, s2, s3]
  end

  def kind(triangle)
    case
    when triangle.is_equilateral? then "equilateral"
    end

  end

  def is_equilateral?(sides)
    sides.all? { |side| @sides.first == side }
  end

end