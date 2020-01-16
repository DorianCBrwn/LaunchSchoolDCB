# Practice Problem 5

# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

result = 0
flintstones.each_with_index do |name, index|
    result = index if name.slice(0, 2) == 'Be'
end
result

