=begin
Write a program that prompts the user for two positive integers, and then prints
the results of the following operations on those two numbers: addition,
subtraction, product, quotient, remainder, and power.
Do not worry about validating the input.
=end
def prompt(message)
  puts "==> #{message}"
end

prompt( "Enter the first number" )
first_num = gets.chomp.to_i

prompt("Enter the second number")
second_num = gets.chomp.to_i

sum = first_num + second_num
difference = first_num - second_num
product = first_num * second_num
quotient = first_num / second_num
remainder = first_num % second_num
power = first_num ** second_num

prompt("#{first_num} + #{second_num} = #{sum} ")
prompt("#{first_num} - #{second_num} = #{difference} ")
prompt("#{first_num} * #{second_num} = #{product} ")
prompt("#{first_num} / #{second_num} = #{quotient}  ")
prompt("#{first_num} % #{second_num} = #{remainder} ")
prompt("#{first_num} ** #{second_num} = #{power} ")

