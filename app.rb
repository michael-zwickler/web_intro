require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  'Hello World'
end

get '/secret' do 
  'I am secret!'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  puts params
  @name = params[:name]
  erb(:index)
end
