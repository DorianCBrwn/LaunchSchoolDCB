#Given a string and a positive integer print the string as many times as the integer indicates

def repeat_string(word, num)
  while num > 0
    puts word
    num -= 1
  end

end

repeat_string('Hello', 3)
