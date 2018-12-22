def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#This method will return an error because execute is expecting a regular parameter instead of a block. To fix the error
#& must be placed infront of the block parameter.
