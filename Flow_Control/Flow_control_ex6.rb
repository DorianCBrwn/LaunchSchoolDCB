def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5) 

#test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
#This error is caused by missing the end keyword for the if statement. Ruby assumes that the end given is for the if
#statement and not for the def method declaration.
