=begin
Problem: Given an octal input string, your program should produce a decimal output
Rephrase:
Examples/tests:
INPUT: String
OUTPUT: Integer
Rules:
  Explicit:
    233 # octal
= 2*8^2 + 3*8^1 + 3*8^0
= 2*64  + 3*8   + 3*1
= 128   + 24    + 3
= 155
  Implicit:
D:
Approach:
Iterate through array of characters
For each character
  Multiply int representation of char by 8 raised to nth power, where n is the size of char array
  save value
subtract n by 1
Return value
C:
=end

class Octal

  def initialize(value)
    @octal = validate_input(value)
  end

  def to_decimal
    exponent = @octal.length
    @octal.chars.reduce(0) do|total, char|
      total += char.to_i * 8 ** exponent
      exponent -= 1
    end
  end

  private

  def validate_input(value)
    return 0 if value.match?(/[^0-7]/)
    value
  end
end