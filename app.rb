require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "I am non secret!"
end

get '/secret' do 
  'I am secret!'
end

get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://placekitten.com/500/500'>
   </div>"
end
