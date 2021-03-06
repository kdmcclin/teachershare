get '/login' do
  erb :login
end

post '/login' do
  user = User.authenticate(params[:user])
  session[:user_id] = user.id
  redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/signup' do
  erb :'/users/new'
end

post '/signup' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect '/'
end
