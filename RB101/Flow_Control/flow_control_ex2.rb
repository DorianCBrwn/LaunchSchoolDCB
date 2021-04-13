def make_caps(word)
  word.length > 10 ? word.upcase : word
end

puts make_caps("Hello")
puts make_caps("Hello my name is samantha")
