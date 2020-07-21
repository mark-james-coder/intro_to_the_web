require 'sinatra'
set :session_secret, 'the secret'

get '/cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
