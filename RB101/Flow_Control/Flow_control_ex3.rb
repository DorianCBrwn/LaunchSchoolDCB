def user_numbers
puts "Enter a number of users."
users = gets.chomp.to_i
    case
    when users < 0
      "Please enter a number greater than 0."
    when users > 0 &&  users <= 50
      puts "#{users}, users is between 0 and 50."
    when users >= 51 &&  users <= 100
      puts "#{users}, users is between 51 and 100."
    when  users > 100
      puts "#{users}, users is above 100."
    end
end

user_numbers

