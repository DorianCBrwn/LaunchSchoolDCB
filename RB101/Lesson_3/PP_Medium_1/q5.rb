limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

#result = fib(0, 1)
#puts "result is #{result}"

#Limit is defined outside the scope of fib so when fib is called, 
#a no local variable error is raised
#to fix this limit either needs to be made a parameter for fib or 
#it needs to be defined within the def block
#
def fib1(first_num, second_num, limit = 15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib1(0, 1)
puts "result is #{result}"


def fib2(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib2(0, 1)
puts "result is #{result}"
