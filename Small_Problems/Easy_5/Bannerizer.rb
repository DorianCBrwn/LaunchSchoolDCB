
#Problem: Bannerizer

=begin 
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
  Rephrase: 
Examples/tests: 

INPUT:
      -String
      separated by 
        -spaces
      terminated by 
        -punctuation
      chars
        - alpha characters
        -punctuation
OUTPUT:
  String surrounded by box
    -1st line '+' + '-'s equal to string size and padded by one '-' on each side, ending in +
    -2nd line '|' ' + ' spaces equal to string size padded by 1 ' ' on each side ending in '|'
    -3nd line '|'+ ' ' +  string + ' '+ '|'
    -4th line '+' + '-'s equal to string size and padded by one '-' on each side, ending in +

Rules:
    Explicit:
    Implicit:

D: 
array 
Approach: 
  Define method print_in_box that takes in string 
  Set line1 to string + string to chars filled by - and padded by - ending in +
C:
=end

def print_in_box (string)
  a = "+-#{string.chars.fill("-").join}-+"
  b = "| #{string.chars.fill(" ").join} |"
  c = "| #{string} |"

  box = [a, b, c, b, a]
  box.each {|x| puts x}
end

#print_in_box('To boldly go where no one has gone before.')
print_in_box('')
