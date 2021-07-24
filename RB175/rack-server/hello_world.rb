class HelloWorld
  def call(env) #define method call that takes in parameter env
    ['200', {'Content-Type' => 'text/plain'}, ['Hello World!']] # return array containing, status code, headers and response body.
  end
end