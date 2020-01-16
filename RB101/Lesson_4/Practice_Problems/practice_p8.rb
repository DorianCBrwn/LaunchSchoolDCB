# How does take work? Is it destructive? How can we find out?
arr = [1, 2, 3, 4, 5]
arr.take(2)


# Take returns the first n items from an array in a new array
# arr.take(2) returns [1,2]
# arr is still [1,2,3,4,5] because take is non destructive
# This can be varified by checking the ruby documentation or evaluating arr after calling take on it.
