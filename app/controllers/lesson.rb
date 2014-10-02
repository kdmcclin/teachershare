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
  @comments = @lesson.comments
  erb :'lessons/show'
end

get '/lessons/:id/edit' do
  @lesson = Lesson.find(params[:id])
  erb :'lessons/edit'
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

post '/lessons/:id/comments/new' do
  @lesson = Lesson.find(params[:id])
  erb :'comments/new'
end

post '/lessons/:id/comments' do
  #step 2
  lesson = Lesson.find(params[:comment][:lesson_id])
  user = User.find(session[:user_id])
  comment = lesson.comments.create(params[:comment])
  comment.user = user
  comment.save
  if request.xhr?
    #step 3
    response = erb :'/lessons/_comment',
    :layout => false,
    :locals => { user: user, comment: comment}
    #step 5
    return response
  else
    redirect "/lessons/#{lesson.id}"
  end
end
