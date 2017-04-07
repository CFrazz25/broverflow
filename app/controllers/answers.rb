post '/questions/:question_id/answers' do
  new_answer = Answer.create(body: params[:body], user_id: session[:user_id], question_id: params[:question_id])
  redirect "/questions/#{new_answer.question_id}"
end

get '/questions/:id/answers/:answer_id/edit' do
  @question = Question.find_by(id: params[:id])
  @answer = Answer.find_by(id: params[:answer_id])
  erb :'Answers/edit'
end

put '/questions/:id/answers/:answer_id' do
  @answer = Answer.find_by(id: params[:answer_id])
  @answer.assign_attributes(params[:answer])
  if @answer.save
    redirect "/questions/#{params[:id]}"
  else
    @errors = @answer.errors.full_messages
    @question = Question.find_by(id: params[:id])
    erb :'Answers/edit'
  end
end

delete '/questions/:id/answers/:answer_id' do
  Answer.find_by(id: params[:answer_id]).destroy
  redirect "/questions/#{params[:id]}"
end

