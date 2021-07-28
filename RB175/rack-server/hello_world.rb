require_relative 'advice'     # loads advice.rb
class HelloWorld
  def call(env)
    case env['REQUEST_PATH']
    when '/'
      ['200', {"Content-Type" => 'text/plain'}, ["<html><body><h2>Hello World!</h2></body></html>"]]
    when '/advice'
      piece_of_advice = Advice.new.generate    # random piece of advice
      ['200', {"Content-Type" => 'text/plain'}, ["<html><body><b><em>#{piece_of_advice}</em></b></body></html>"]]
    else
      [
        '404',
        {"Content-Type" => 'text/plain', "Content-Length" => '13'},
        ["<html><body><h4>404 Not Found</h4></body></html>"]
      ]
    end
  end
end