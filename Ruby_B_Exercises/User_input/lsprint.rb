num = 0
while num < 3
  puts ">> How many output lines do you want? Enter a number >= 3:"
  num = gets.chomp.to_i
  if num >= 3
    puts "Launch School is the best!\n" * num
  else 
    puts ">> That's not enough lines."
  end
end
