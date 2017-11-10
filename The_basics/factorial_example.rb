def factorial(num)
  count = 1
  result = 1
  until count > num
    result *= count
    count += 1
  end
  result
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)
