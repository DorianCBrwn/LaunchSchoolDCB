def rps(fist1, fist2)
  if fist1 == "rock"                              # => false
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"                          # => true
    (fist2 == "scissors") ? "scissors" : "paper"  # => "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end                                             # => "paper"
end                                               # => :rps

#puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


#rps("rock", "paper") => "paper"
#rps("rock", "scissor") => "rock"
#rps("paper", "rock") => "paper"
#rps("paper" "rock") => "paper"
#solve from inner most to outer.

