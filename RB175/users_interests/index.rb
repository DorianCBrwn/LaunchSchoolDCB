require 'yaml'

require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require 'bundler/setup'

before do
  @users = YAML.load_file('./users.yaml')
end

helpers do
  def count_interests(users)
    users.reduce(0) do |sum, (_name, user)|
      sum + user[:interests].size
    end
  end
end

get '/' do
  redirect '/users'
end

get '/users' do
  erb :users
end

get '/:user' do
  @user_name = params[:user].to_sym
  @email = @users[@user_name][:email]
  @interests = @users[@user_name][:interests]

  erb :profile
end
