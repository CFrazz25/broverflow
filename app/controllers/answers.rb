post '/questions/:question_id/answers' do
  new_answer = Answer.create(body: params[:body], user_id: session[:user_id], question_id: params[:question_id])
  redirect "/questions/#{new_answer.question_id}"
end


