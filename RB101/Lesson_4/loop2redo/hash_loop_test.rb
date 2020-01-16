domains = { "de" => "Germany",
            "sk" => "Slovakia",
            "hu" => "Hungary",
            "us" => "United States",
            "no" => "Norway"
          }


def select_value(hash, selection_criteria) 
  keys_of_hash = hash.keys
  counter = 0
  selected_hash = {}

  loop do
    break if counter == keys_of_hash.size

    current_key = keys_of_hash[counter]
    current_value =  hash[current_key]

    if current_value.include?(selection_criteria)
      selected_hash[current_key] = current_value
    end
    counter += 1
  end
  selected_hash
end


criteria = 'h'

select_value(domains, criteria)
