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

# get '/lessons/:id/edit_confirmation' do
#   if params[:error] == 'error'
#     @error = "ERROR: USERNAME AND PASSWORD FOR LESSON DO NOT MATCH"
#   end
#   @lesson = Lesson.find(params[:id])
#   erb :'/lessons/edit_confirmation'
# end

# post '/lessons/:id/edit_confirmation' do
#   @lesson = Lesson.find(params[:id])
#   if params[:username] == @lesson.user.username && params[:email] == @lesson.user.email
#     redirect ("lessons/#{params[:id]}/edit")
#   else
#     redirect ("/lessons/#{params[:id]}/edit_confirmation?error=error")
#   end
# end

delete '/articles/:id' do
  @lesson = Lesson.find(params[:id])
  Lesson.destroy(@lesson)

  redirect '/'
end
