def zip(arr1, arr2)
  idx = 0
  new_arr = []
  loop do
    new_arr << [arr1.fetch(idx), arr2.fetch(idx)]

    break if idx >= arr2.size - 1
    idx += 1
  end
  new_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]