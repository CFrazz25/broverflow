get '/questions' do
  erb :index
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @answers = Answer.where(question_id: @question.id)
  erb :'/questions/show'
end

get '/questions/:id/vote' do
end
