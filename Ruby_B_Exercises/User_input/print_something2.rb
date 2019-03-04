stop = false
until stop
    puts ">> Do you want me to print something? (y/n)"
    input = gets.chomp.downcase
  if input == "y"
    puts "something"
    stop = true
  elsif input == "n"
    stop = true
  else 
    puts ">> Invalid input! Please enter y or n"
  end
end
