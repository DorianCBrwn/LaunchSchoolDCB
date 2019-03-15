name = 'Roger'

def check_name(name1, name2)
  if name1.downcase == name2.downcase
    true
  else 
    false
  end
end

puts check_name(name, 'RoGeR')
puts check_name(name, 'DAVE')
