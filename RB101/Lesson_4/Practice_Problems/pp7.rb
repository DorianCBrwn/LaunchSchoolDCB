# Practice Problem 7

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

result = statement.chars.each_with_object({}) do |letter, hash|
  hash[letter] = statement.count(letter)
end

result
