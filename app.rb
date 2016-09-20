require 'sinatra'

get '/' do 
	erb :get_name
end
post '/the_users_name' do
	name = params[:user_name]
	redirect '/age?users_name=' + name
end

get '/age' do 
	name = params[:users_name].capitalize
		"Well hello #{name}"
end