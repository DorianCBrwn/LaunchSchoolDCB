def reduce(arr, acc= arr.first)
  acc.nil? ? counter = 0 : counter = 1

  while counter < arr.size
    num = arr[counter]
    acc = yield(acc, num)
    counter += 1
  end
  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']:w
p reduce(array, 10) { |acc, num| acc + num }