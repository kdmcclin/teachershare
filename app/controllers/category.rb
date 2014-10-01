get 'categories/all' do
  @categories = Category.all.order("category ASC")
  # erb :'/categories/index'
end

get '/categories/:category_id/lessons' do
  @category_name = Category.find(params[:category_id]).category
  @lesson_collection = Lesson.where(category_id: params[:category_id]).order("updated_at DESC")
  erb :'/categories/show'
end
