family = {uncle: "bob", sister: "jane", brother: "frank", aunt: "mary" }
family.each_key{|key| puts "#{key} is a key in the family hash."}
family.each_value{|val| puts "#{val} is a value in the family hash"} 
family.each{|key, val| puts "#{val} is the value for key, #{key}."}
