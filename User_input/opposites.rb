def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def opposites?(num1, num2)
  true if num1.to_i * num2.to_i < 0
end

u_input = nil
num_0 = nil
num_1 = nil

loop do
  2.times do |x|
  puts ">> Please enter a positive or negative integer:"
  u_input = gets.chomp
    if valid_number?(u_input)== false
        puts ">> Invalid input. Only non-zero integers are allowed."
        redo
      elsif x == 0
        num_0 = u_input
      else x == 1
        num_1 = u_input
    end
  end
  break if opposites?(num_0, num_1)
puts ">> Sorry. One integer must be positive, one must be negative."
puts ">> Please start over."
end
result = num_0.to_i + num_1.to_i

puts "#{num_0} + #{num_1} = #{result}"
