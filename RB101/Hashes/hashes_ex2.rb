vegetables = {corn: 1, brocolli: 4, carrots: 3, peas: 1}
grains = {rice: 1, wheat: 3, barley: 2, corn: 4}

puts "Hash vegetables combines with Hash grains."
p vegetables.merge(grains)
#merge is nondestructive and comines the called on hash with the given hash. 
#Both the call hash and given hash remain unchanged
puts "Original hash vegetables is unmodified."
p vegetables

puts "Combining hashes using destructive merge message."
p vegetables.merge!(grains){|key, oldv, newv| newv = oldv}
puts "Merge has changed the orginal hash."
p vegetables

#merge! is destructive and changes the called on hash
# both versions of merge will also allow you to modify the values of duplicate keys by providing a block.
p vegetables
p grains
