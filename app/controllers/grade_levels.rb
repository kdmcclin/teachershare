get 'grade_levels/all' do
  @grade_levels = GradeLevel.all
  # erb :'/grade_levels/index'
end

get '/grade_levels/:grade_level_id/lessons' do
  @grade_level = GradeLevel.find(params[:grade_level_id]).level
  @lesson_collection = Lesson.where(grade_level_id: params[:grade_level_id]).order("updated_at DESC")
  erb :'/grade_levels/show'
end
