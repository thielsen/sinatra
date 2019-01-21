require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'secret!!'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/named-cat-form' do
  erb(:named_cat_form)
end
