class RomanNumeral

ROMAN_VALUES = {1000=>"M", 900=>"CM", 500=>"D",
                400=> "CD", 100=>"C", 90=>"XC",
                50=>"L", 40=>"XL",  10=>"X",
                9=>"IX", 5=>"V",4=> "IV", 1=>"I"}

  attr_reader :int
  def initialize(int)
    @int = int
  end

  def to_roman
    result = ''
    int_value = self.int
    ROMAN_VALUES.each do |number, roman_values |
      n, remainder = int_value.divmod(number)
       n.times{|_| result << roman_values}
       break if remainder == 0
       int_value = remainder if remainder > 0
    end
    result
  end

end