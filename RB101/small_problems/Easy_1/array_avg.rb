#-Start
#Given one argument, an array containing integers, and returns the average of all numbers in the array.
#Set array to arr
#Set sum to arr reduced with addition
#divide sum by length of array
#Return arr

def average(arr)
 sum =  arr.reduce(:+)
puts sum.to_f / arr.size
 
end
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
