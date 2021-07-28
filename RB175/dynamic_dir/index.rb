require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = 'Files in Public'
  @contents = Dir.glob('public/*').map { |file| File.basename(file) }.sort
  @files.reverse! if params[:sort] == 'desc'
  erb :home
end
