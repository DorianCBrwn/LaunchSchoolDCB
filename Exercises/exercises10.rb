#Can hash values be arrays? Can you have an array of hashes?
#Yes 
#
arr = [{one: 1},"two", {three: 3}]
hash = {arr: [1,2,3], string: "word", int: 5}
puts arr
puts hash
