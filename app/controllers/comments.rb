post '/questions/:id/comments' do
  question = Question.find_by(id: params[:id])
  question.comments.create(body: params[:body], user_id: current_user.id)
  redirect "/questions/#{question.id}"
end

post '/questions/:id/answers/:answer_id/comments' do
  question = Question.find_by(id: params[:id])
  answer = question.answers.find_by(id: params[:answer_id])
  answer.comments.create(body: params[:body], user_id: current_user.id)
  redirect "/questions/#{question.id}"
end


