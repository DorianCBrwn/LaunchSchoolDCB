#A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
#returns "two" because of assignement and it is the last value evaluated
#the following puts statesments return nil and print out the original values of the onw, two and three variables because
#assignement does not modify objects
puts "one is: #{one}"
#"one" 
puts "two is: #{two}"
#"two"
puts "three is: #{three}"
#"three"


#B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
# mess with vars returns "one" as three is the last value of the method and has been bound the string object witht the
# value "one"
#
# These statements still return nil and print the original values beacuse assignement does not modifiy the original
# values
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
#returns "one" because the value of variable three has been modified due to the gsub! method

#The values have been modiefied due to the gsub! method
puts "one is: #{one}"
#prints "one is two"
puts "two is: #{two}"
#prints "two is three"
puts "three is: #{three}"
#prints "three is one"
