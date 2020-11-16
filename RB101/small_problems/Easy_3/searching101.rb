# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the
# 6th number appears amongst the first 5 numbers.
arr = []
def prompt(message)
  puts ">> #{message}"
end

def number_place(num)
  num += 1
  case num
  when 1 then '1st'
  when 2 then '2nd'
  when 3 then '3rd'
  when 4 then '4th'
  when 5 then '5th'
  else
    'last'
  end
end

user_input = ''
6.times do |x|
  prompt("Enter the #{number_place(x)} number:")
  user_input = gets.chomp.to_i
  arr << user_input
end
last_num = arr.pop

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}."
else

  puts "The number #{last_num} does not appears in #{arr}."
end
