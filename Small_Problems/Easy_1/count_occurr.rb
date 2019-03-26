vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'suv'
]

#Write a method that counts the number of occurrences of each element in a given array.
def count_occurrences(arr)
occurrences = {}
  arr.each do |word|
    word = word.downcase
    if occurrences.has_key?(word)
      occurrences[word] = occurrences[word] + 1
    else
      occurrences[word] = 1
    end
    occurrences
  end
  occurrences.each {|k,v| puts "#{k} => #{v}"}
end
count_occurrences(vehicles)
