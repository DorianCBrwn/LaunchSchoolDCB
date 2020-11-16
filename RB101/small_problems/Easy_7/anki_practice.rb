numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_arr = []

numbers.each do |num|
  odd_arr << num if num.to_i.odd?
end
odd_arr
