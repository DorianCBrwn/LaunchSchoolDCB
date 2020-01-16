[1, 2, 3].reject do |num|
  puts num
end

#reject returns an array of all the elements for which the block returns false
#Since the return value of puts is nil the block is always falsey, thus 
#the return value is [1,2,3]
