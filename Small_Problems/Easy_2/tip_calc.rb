# Prompt user for a bill amount and a tip rate.
# The program must compute the tip and then,
# display both the tip and the total amount of the bill.

puts 'What is the bill?'
bill = gets.chomp.to_f
puts 'What is the tip percentage?'
tip_rate = gets.chomp.to_f
tip = (tip_rate * 0.01) * bill
total = tip + bill

puts "The tip is #{format('$%.2f', tip)}"
puts "The total is #{format('$%.2f', total)}"
