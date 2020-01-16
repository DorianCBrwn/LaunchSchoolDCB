number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

array_of_keys = number_of_pets.keys

counter = 0

loop do 
  break if counter == array_of_keys.size

  current_element = array_of_keys[count]
  array_of_values =  number_of_pets[current_element]
  puts "This is a key #{array_of_keys[count]}"
  puts "This is a value #{array_of_values[count]}"
  counter += 1 

end
