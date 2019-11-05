def digit_list(num)
  result = []
  while num.positive?
    arr = num.divmod(10)
    result << arr[1]
    num = arr[0]
  end
  result.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
