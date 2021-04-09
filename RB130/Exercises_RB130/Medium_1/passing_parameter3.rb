items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

puts "Example 1"
gather(items) do |*head,tail|
  puts head.join(", ")
  puts tail
end

puts "Example 2"
gather(items) do |start, *middle, last|
  puts start
  puts middle.join(", ")
  puts last
end

puts "Example 3"
gather(items) do |head, *rest|
  puts head
  puts rest.join(", ")
end

puts "Example 4"
gather(items) do | a, b, c, d|
  puts [a,b,c].join(", ") + ", and #{d}"
end