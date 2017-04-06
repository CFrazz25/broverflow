post '/questions/:question_id/answers'
  question = Question.find_by(id: params[:question_id])
  question.answers.create(:)
  redirect '/questions/:id'
end
