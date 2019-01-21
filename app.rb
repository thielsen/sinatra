require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'secret!!'
end

get '/cat' do
  erb(:index)
end
