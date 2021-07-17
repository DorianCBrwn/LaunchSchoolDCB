require "socket"

def parse_request(request_line)
  http_method, path, q_string_version = request_line.partition("/")
  q_string, _version = q_string_version.split(" ")
  q_string = q_string[1..-1]
  q_string = q_string.split("&")
  q_string.each_with_object({}) do |pair, hash|
    key, value = pair.split("=")
    hash[key] = value
  end
end

server = TCPServer.new("localhost", 3003)

loop do
  client = server.accept
  request_line = client.gets
  puts request_line


  client.puts http_method
  client.puts path
  client.puts q_string
  client.puts rand(6) + 1
  client.close
end
