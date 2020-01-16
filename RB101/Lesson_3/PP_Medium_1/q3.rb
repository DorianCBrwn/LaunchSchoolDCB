def factors(number)
  divisor = number
  factors = []

  while divisor.positive?
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

factors( -45)

#Bonus: number % divisor == 0 is use to check whether the product of number/ divisor is an actual factor
# and not a float
#Bonus2: Line 10:factor, is used to return the result of the while loop by utlilizing Ruby's implicit return 
