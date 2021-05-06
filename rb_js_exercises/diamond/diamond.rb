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

  def self.make_diamond(center_letter)
    range = [*'A'...center_letter] + [*'A'..center_letter].reverse
    width = diamond_width(center_letter)
    arr = []
    range.each do |letter|
      arr << make_row(letter).center(width)
    end
    arr.join("\n") + "\n"
  end

  private

  def self.make_row(letter)
    str = ""
    case letter

    when 'A' then return'A'
    when 'B' then return 'B B'
    else
     return str = "#{letter}#{inner_space(letter)}#{letter}"
    end
  end

  def self.outer_space(letter)
  end

  def self.inner_space(letter)
    case letter
    when 'A' then ""
    when 'B' then " "
    else
      (" " * 3) + (" " * (2 * (letter.ord - "C".ord)))
    end
  end

    def self.diamond_width(letter)
      return 1 if letter == 'A'

      inner_space(letter).count(' ') + 2
    end
end