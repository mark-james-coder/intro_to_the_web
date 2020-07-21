require 'sinatra'
set :session_secret, 'the secret'

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end
