
def user_numbers(users)
    case
      when users < 0
        puts "Please enter a number greater than 0."
      when users > 0 &&  users <= 50
        puts "#{users}, users is between 0 and 50."
      when users >= 51 &&  users <= 100
        puts "#{users}, users is between 51 and 100."
      when  users > 100
        puts "#{users}, users is above 100."
    end
end

def user_numbers2(users)
  if users <= 0
    puts "Enter a number greater than 0"
  elsif users <= 50
    puts "#{users}, users is between 0 and 50."
  elsif users <= 100
    puts "#{users}, users is between 51 and 100."
  elsif users > 100
    puts "#{users}, users is greater than 100."
  end

end


while true
puts "Enter a number of users."
users = gets.chomp.to_i
  user_numbers(users)
  user_numbers2(users)
end

