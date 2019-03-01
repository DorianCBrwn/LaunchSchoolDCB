PASSWORD = "SecreT"
loop do 
  puts ">> Please enter your password"
  input = gets.chomp
  if PASSWORD == input
    puts "Welcome!"
    break
  else 
    puts ">> Invalid password!"
  end
end
