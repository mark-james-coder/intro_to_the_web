require 'sinatra'
set :session_secret, 'the secret'

get '/cat' do
  erb(:index)
end
