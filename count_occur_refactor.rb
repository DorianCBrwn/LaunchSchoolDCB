vehicles = w% (car car truck car SUV suv suv truck motorcycle
                motorcycle car truck)

def count_occurrences(arr)
  occurance = {}
  unique_arr = arr.map(&:downcase).uniq
  unique_arr.each do |ele|
    occurance[ele] = arr.count(ele)
  end
  occurance
end

count_occurrences(vehicles)


