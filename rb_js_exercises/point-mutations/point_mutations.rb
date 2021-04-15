=begin
Problem:
For our program, the details we need to keep in mind are as follows:

We will be given two strands of DNA.
We need to count the differences between them.
If one strand is shorter than the other, we only need to check for differences for the length of the shorter strand.

Rephrase:
Examples/tests:
INPUT:
OUTPUT:
Rules:
  Explicit:
         - A constructor that accepts a DNA strand string as argument. The
          constructor does not raise any errors.
          - A method that accepts a
          second DNA strand string as an argument and returns the differences
          between the two strands — the Hamming distance.
  Implicit:
        - Use the size of the smaller strand as the iterator
D:
- We're given the DNA strands as strings.
- Additionally, we may want to use a collection to help us iterate through each character of the DNA strand.
Approach:
C:
=end

class DNA
attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand2)
    difference = 0
    str1, str2 = self.convert_strands(strand2)

    str1.each_with_index do |letter, index|
      difference += 1 unless letter == str2[index]
    end
    difference
  end

  def convert_strands(strand2)
    str_arr1 = strand.chars
    str_arr2 = strand2.chars

    [str_arr1, str_arr2].sort.reverse

  end
end