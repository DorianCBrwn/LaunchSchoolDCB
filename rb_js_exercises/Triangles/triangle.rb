=begin
Problem: Write a program to determine whether a triangle is equilateral, isosceles, or scalene.
Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
        - To be a valid triangle, each side length must be greater than 0.
        - To be a valid triangle, the sum of the lengths of any two sides must be greater than the length of the remaining side.

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
    validate_triangle(s1,s2,s3)
  end

  def kind
    case
    when is_equilateral? then "equilateral"
    when is_isosceles? then "isosceles"
    else "scalene"
    end
  end

  private

  def is_equilateral?
    sides.all? { |side| @sides.first == side }
  end

  def is_isosceles?
    sides.tally.values.any? {|side| side == 2}
  end

  def validate_triangle(*initial_sides)
    if sides_greater_than_zero?(initial_sides)
      raise ArgumentError
    elsif sides_create_triangle?(initial_sides)
      raise ArgumentError
    end
    @sides = initial_sides
  end

  def sides_greater_than_zero?(sides_arr)
    sides_arr.any? { |side| side <= 0}
  end

  def sides_create_triangle?(sides_arr)
    *head, s3 = sides_arr
    s1, *tail = sides_arr
    (head.sum <= s3) || (tail.sum <= s1)
  end


end