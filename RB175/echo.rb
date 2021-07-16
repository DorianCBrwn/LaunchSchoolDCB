require "socket"

server = TCPServer.new("local host", 3003)

loop do
  client = server.accept
  request_line = client.gets


  client.puts(request_line)
  client.close
end