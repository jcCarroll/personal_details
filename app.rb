require 'sinatra'

get '/' do 
	erb :get_name
end
post '/the_users_name' do
	name = params[:user_name]
	# redirect -- First part (/age) points to the next function. The ? passes in a new variable of (users_name).
	redirect '/age?users_name=' + name
end

get '/age' do 
	name = params[:users_name].capitalize
	erb :get_age, :locals => {:name => name}
end