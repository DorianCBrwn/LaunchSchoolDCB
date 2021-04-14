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
  attr_accessor :sides
  def initialize(s1,s2,s3)
    @sides = [s1, s2, s3]
  end

  def kind
    case
    when self.is_equilateral? then "equilateral"
    when self.is_isosceles? then "isosceles"
    else "scalene"
    end

  end

  def is_equilateral?
    sides.all? { |side| @sides.first == side }
  end

  def is_isosceles?
    sides.tally.values.any? {|side| side == 2}
  end

end