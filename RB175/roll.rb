require 'socket'

server = TCPServer.new("localhost", 3003)



def http_parser(request)
    http_method, path, query_string = request.partition("/")
end

def querty_string_parser(q_string)
  q_string.shift.
end


loop do
  client = server.accept
  request_line = client.gets
  puts request_line

  http_method, path, query_string = http_parser(request_line)

  client.puts http_method == "GET"
  client.puts path == '/'
  client.puts query_string == {"rolls" => "2", "sides" => "6"}

  client.puts request_line
  client.puts rand(6) + 1
  client.close

end