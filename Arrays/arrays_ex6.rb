names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
#This will cause an error because ruby expects an integer representing the index of the array when using bracket
#notation. This can be fixed but substituting 'margaret' for the index of the value margaret. Ex. names[3] = 'jody'
