def reverse_words(string)
  reverse_string = []
words = string.split
 words.each do |x|
    if x.size >= 5
        reverse_string << x.reverse
    else 
      reverse_string << x
    end
  end
reverse_string.join(" ")
end
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
