require 'sinatra'
set :session_secret, 'the secret'

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end
