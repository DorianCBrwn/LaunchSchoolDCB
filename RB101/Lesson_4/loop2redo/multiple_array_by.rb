
def multiply_array(numbers, multiple)
  multiplied_array = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= multiple
    multiplied_array << current_number

    counter += 1
  end

  multiplied_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply_array(my_numbers, 5)
