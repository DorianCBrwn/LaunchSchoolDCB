say_hello = true
it = 0
while say_hello
  puts 'Hello!'
  it += 1
  say_hello = false if it == 5
end
