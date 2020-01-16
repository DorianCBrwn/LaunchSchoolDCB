def double_numbers(numbers)
  counter = 0                # => 0

  loop do
    break if counter == numbers.size  # => false, false, false, false, false, false, true

    numbers[counter] *= 2  # => 2, 8, 6, 14, 4, 12

    counter += 1  # => 1, 2, 3, 4, 5, 6
  end             # => nil

numbers  # => [2, 8, 6, 14, 4, 12]
end      # => :double_numbers

my_numbers = [1, 4, 3, 7, 2, 6]  # => [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)       # => [2, 8, 6, 14, 4, 12]
