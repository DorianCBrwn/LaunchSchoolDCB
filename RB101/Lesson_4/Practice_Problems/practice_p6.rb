#What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

#=> 11
#
# pop destructively removes the last element from an array and returns it 
# which in this case is 'caterpillar'
# Next size is called on the return value of pop 'caterpillar'.size is 11 as this word has 
# 11 characters 
