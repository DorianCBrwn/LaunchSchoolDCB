=begin
The diamond exercise takes as its input a letter, and outputs it in a diamond shape. Given a letter, it prints a diamond starting with 'A', with the supplied letter at the widest point.

The first row contains one 'A'.
The last row contains one 'A'.
All rows, except the first and last, have exactly two identical letters.
The diamond is horizontally symmetric.
The diamond is vertically symmetric.
The diamond has a square shape (width equals height).
The letters form a diamond shape.
The top half has the letters in ascending order.
The bottom half has the letters in descending order.
The four corners (containing the spaces) are triangles.

Problem: Given a letter, it prints a diamond starting with 'A' and ending with 'A', with the supplied letter at the widest point.
Rephrase:
Examples/tests:

Diamond for letter 'A'
A

Diamond for letter 'B'
 A
B B
 A

Diamond for letter'C'
  A
 B B
C   C
 B B
  A

Diamond for letter "D"
   A
  B B
 C   C
D     D
 C   C
  B B
   A



Diamond for letter 'E'

    A
   B B
  C   C
 D     D
E       E
 D     D
  C   C
   B B
    A

INPUT: String
OUTPUT:
Rules:
  Explicit:
  Implicit:
D:
[*'A'..'Z'] alphabet
Approach:
initialize variable called outer_space and assign it to the index of the argument
initialize variable called inner_space and assign it to zero

" " times outer_space #{letter} " " times outer_space + \n
loop
deincrement outerspace by 1
increment inner_space by 1
break if outer_space is equal to zero
(" " times outer_space) #{letter} " " times inner_space + #{letter} (" " times outer_space) + \n

loop
deincrement inner_space by 1
increment outer_space by 1
break if inner_space is equal to zero
" " times outer_space #{letter} " " times outer_space + \n


C:


=end
# ALPHA = [*'A'..'Z']
# class Diamond

#   def self.make_diamond(letter)
#     outer_space = ALPHA.index(letter)
#     inner_space = 0
#     result = ""
#     ending = "#{" " * outer_space}A#{" " * outer_space}\n"

#     'A'.upto(letter) do |letter|
#        if letter == "A"
#          result << ending
#          next
#        elsif inner_space < 1
#         outer_space -= 1
#         inner_space += 1
#         result << "#{' ' * outer_space}#{letter}#{' ' * inner_space}#{letter}#{' ' *   outer_space}\n"
#        else
#         outer_space -= 1
#         inner_space += 2
#         result << "#{' ' * outer_space}#{letter}#{' ' * inner_space}#{letter}#{' ' *   outer_space}\n"
#        end
#     end
#     result.rstrip!
#   #   result2 = result.delete(letter).reverse
#   #  result + result2
#    end
# end
#

class Diamond
  ALPHA = [*'A'..'Z']
  def self.make_diamond(middle_letter)
    range = [*'A'...middle_letter] + [*'A'..middle_letter].reverse
    arr = []
    space_value = 1
    range.each_with_index do |letter, index|
      case letter
      when 'A'
        arr << " " * range.index(middle_letter) + letter + " " * range.index(middle_letter)
      when 'B'
        arr << " " * (range.index(middle_letter) - (range.index('B'))) + letter + " " + letter + " " * (range.index(middle_letter) - (range.index('B')))
      else
        arr << " " * (range.index(middle_letter) - (range.index(letter))) + letter + " " * inner_space(space_value) + letter + " " * (range.index(middle_letter) - (range.index(letter)))
      end
    end
    arr.join("\n")
  end

  def self.diamond_width(letter)
    ALPHA.index(letter) * 2
  end

  def self.inner_space(space_value)
    space_value + 2
  end
end

puts Diamond.make_diamond('D')

=begin
Problem:
Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
  Implicit:
D:
Approach:
C:
=end