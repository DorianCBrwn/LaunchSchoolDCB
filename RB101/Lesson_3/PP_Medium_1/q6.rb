answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer) # new_answer = 50

p answer - 8 #equals 37

#answer = 34 because its value original  was not modified by the mess_with_it call 
#42 - 8 = 34
