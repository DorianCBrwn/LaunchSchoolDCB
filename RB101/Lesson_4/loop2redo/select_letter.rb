def select_letter(string, char)
  selected_letters = ''
  counter = 0

  loop do 
    break if counter == string.size

    current_letter = string[counter]
    selected_letters << current_letter if current_letter == char
    counter += 1
  end
  selected_letters
end



question = 'How many times does a particular character appear in this sentence?'

select_letter(question, 'a')
select_letter(question, 't')
select_letter(question, 'z')
