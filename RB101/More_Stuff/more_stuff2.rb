def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#The will not print anything because block is missing call. 
##It will return the proc object
