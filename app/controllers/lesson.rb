get '/lessons/new' do
  erb :'lessons/new'
end

post '/lessons' do
  user = User.find(session[:user_id])
  @lesson = user.lessons.create(params[:lesson])
  redirect '/'
end