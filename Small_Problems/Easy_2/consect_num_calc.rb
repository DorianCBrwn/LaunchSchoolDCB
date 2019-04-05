# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of
# all numbers between 1 and the entered integer.
#
def prompt(message)
  puts(">> #{message}")
end

def valid_number?(num)
  num.integer? && num > 0
end

def sum_numbers(int)
  arr = []
  1.upto(int) { |number| arr.push(number) }
  arr.reduce(:+)
end

def multiply_numbers(int)
  arr = []
  1.upto(int) { |number| arr.push(number) }
  arr.reduce(:*)
end

loop do # Main loop
  int = nil
  loop do
    prompt('Please enter an integer greater than 0:')
    int = gets.chomp.to_i

    if valid_number?(int)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    s) enter 's' to perform addition
    p) enter 'p' to perform multiplication
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(s p).include?(operator.downcase)
      break
    else
      prompt("Must choose 's' for sum or 'p' for product")
    end
  end
  sum = nil
  product = nil

  if operator.casecmp('s').zero?
    sum = sum_numbers(int)
  else
    product = multiply_numbers(int)
  end

  if sum
    prompt "The sum of the integers between 1 and #{int} is #{sum}."
  else
    prompt"The product of the integers between 1 and #{int} is #{product}."
  end

  prompt('Do you want to perform another calculation (Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('Thank you for using the calculator')
