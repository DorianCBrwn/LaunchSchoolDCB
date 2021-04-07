def map(collection)
  collection.each_with_object([]) do |ele, collection|
    collection << yield(ele)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

# Hashes:
p map({:a => 1, :b => 2, :c => 3}) { |key, value| [key, value * 2] } == [[:a, 2], [:b, 4], [:c, 6]]
p map({}) { |key, value| [key, value * 2] } == []
