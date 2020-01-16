greetings = { a: 'hi' }            # => {:a=>"hi"}
informal_greeting = greetings[:a]  # => "hi"
informal_greeting << ' there'      # => "hi there"

puts informal_greeting  # => nil
#greetings should become {a: 'hi there" because informal is assigned to the same object as greetings[:a] and 
#a mutating method was called on informal_greeting
puts greetings          # => nil

# >> hi there
# >> {:a=>"hi there"}
