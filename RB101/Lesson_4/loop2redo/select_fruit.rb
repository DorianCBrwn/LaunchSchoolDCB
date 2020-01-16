produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_hash)
  selected_fruits = {}
  produce_keys = produce_hash.keys
  counter = 0
  loop do 
    break if counter == produce_keys.size

    current_element = produce_keys[counter]
    selected_fruits[current_element] = produce_hash[current_element] if produce_hash[current_element] == 'Fruit'
    counter += 1
  end
  selected_fruits
end









select_fruit(produce)
