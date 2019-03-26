#Given one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
def stringy(number,lead = 1)
  string = ''
  if lead == 1 
    first = '1' 
    second = '0'
  else 
    first = '0'
    second = '1'
  end

  number.times do |count|
    count.even? ? string << first : string << second
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'
