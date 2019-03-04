USERNAME ="admin"
PASSWORD = "SecreT"
loop do 
  puts  ">> Please enter your user name"
  user = gets.chomp
  puts ">> Please enter your password"
  pw_attempt = gets.chomp
  break if PASSWORD == pw_attempt && USERNAME == user
    puts ">> Authorization failed!"
end
    puts "Welcome!"
