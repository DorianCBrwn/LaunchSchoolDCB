# Given a string and a positive integer print the string as many times as the 
# integer indicates

# def repeat_string(word, num)
#   while num.positive?
#     puts word
#     num -= 1
#   end
# end
# repeat_string('Hello', 3)

def repeat_string(word, num)
  num.times do
    puts word
  end
end

repeat_string('Hello', 3)
