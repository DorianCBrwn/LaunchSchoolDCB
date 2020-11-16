
def word_sizes(words_string)
  clean_string = words_string.gsub(/[^A-Z a-z]/, "")
  clean_string.split.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.size] += 1
  end
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
