number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  puts "the value of number a is #{number_a}"
  number_b += rand(2)
  puts "the value of number b is #{number_b}"
    next unless (number_a == 5) || (number_b == 5) 
  puts "5 was reached!"
  break 
end