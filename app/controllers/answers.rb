post '/questions/:question_id/answers' do
  question = Question.find_by(id: params[:question_id])
  # question.answers.create(:)
  new_answer = Answer.create(body: params[:body])
  redirect '/questions/:id'
end
