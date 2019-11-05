def reverse_words(str)
  str_arr = str.split(' ')
  reverse_word = []
  str_arr.each do |word|
    if word.chars.count >= 5
      reverse_word << word.reverse
    else
      reverse_word << word
    end
  end
  reverse_word.join(" ")
end






puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
