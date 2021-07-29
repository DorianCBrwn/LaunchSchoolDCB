require 'tilt/erubis'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = 'The Adventures of Sherlock Holmes'
  @contents = File.readlines('data/toc.txt')
  erb :home
end

get '/chapters/:number' do
  number = params[:number]
  @subtitle = "Chapter #{number}"

  @contents = File.readlines('data/toc.txt')
  @chapter = File.read("data/chp#{number}.txt")

  erb :chapter
end

get '/show/:name' do
  params[:name]
end
