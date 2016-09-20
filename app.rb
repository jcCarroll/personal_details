require 'sinatra'

get '/' do 
	erb :get_name
end
post '/name' do
  "Hello World"
end