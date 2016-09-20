require 'sinatra'

get '/' do 
	erb :get_name
end
post '/the_user_name' do
	name = params[:user_name]
	# redirect -- First part (/age) points to the next function. The ? passes in a new variable of (users_name).
	redirect '/age?user_name=' + name
end

get '/age' do 
	name = params[:user_name].capitalize
	erb :get_age, :locals => {:name => name}
end

post '/age' do
	age = params[:user_age]
	name = params[:user_name]
	redirect '/threenums?name=' + name + '&age=' + age
end

get '/threenums' do 
	name = params[:name]
	age = params[:age]
	erb :get_3nums, :locals => {:name => name, :age => age}
end

post '/threenums' do
	age = params[:user_age]
	name = params[:user_name]
	num1 = params[:user_threenums1]
	num2 = params[:user_threenums2]
	num3 = params[:user_threenums3]
	"So, #{name}, you are #{age} and your 3 favorite numbers are #{num1}, #{num2}, and #{num3}."
end