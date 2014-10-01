get '/lessons/new' do
  erb :'lessons/new'
end

post '/lessons' do
  user = User.find(session[:user_id])
  @lesson = user.lessons.create(params[:lesson])
  redirect '/'
end

get '/lessons/:id' do
  @lesson = Lesson.find(params[:id])
  @user = @lesson.user
  erb :'lessons/show'
end

get '/lessons/:id/edit' do
  @lesson = Lesson.find(params[:id])
  erb :'/lessons/edit'
end

put '/lessons/:id' do
  Lesson.update(params[:id], params[:lesson])
  redirect ("lessons/#{params[:id]}")
  #AJAX lesson editing later
end

delete '/lessons/:id' do
  @lesson = Lesson.find(params[:id])
  Lesson.destroy(@lesson)

  redirect '/'
end
