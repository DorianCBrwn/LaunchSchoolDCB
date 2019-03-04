def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter a numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end

loop do
  puts ">> Please enter a denominator:"
  denominator = gets.chomp
  if valid_number?(denominator) == false
    puts ">> Invalid input. Only integers are allowed."
  elsif  denominator.to_i.zero?
    puts "Invalid input. A denominator of 0 is not allowed."
  else
    break
  end

end

num = numerator.to_i
dem = denominator.to_i
quot = num / dem

puts " #{numerator} / #{denominator} is #{quot}"
