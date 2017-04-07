post '/questions/:question_id/vote' do
  question = Question.find_by(id: params[:question_id])
  uservote = question.votes.find_by(user_id: session[:user_id])
  # if uservote
  #   @error = "you voted already"
  #   redirect '/'
  # end


  if params[:upvote]
    if uservote && uservote.value == 1
      @error = "you can't upvote again"
      question.total_votes
      redirect '/'
    elsif uservote && uservote.value == -1
      uservote.update_attributes(value: 1)
      question.total_votes
      redirect '/'
    else
      vote = question.votes.create(user_id: session[:user_id], value: 1)
      question.total_votes
      redirect '/'
    end
  elsif params[:downvote]
    if uservote && uservote.value == -1
      @error = "you can't downvote again"
      question.total_votes
      redirect '/'
    elsif uservote && uservote.value == 1
      uservote.update_attributes(value: -1)
      question.total_votes
      redirect '/'
    else
    vote = question.votes.create(user_id: session[:user_id], value: -1)
    question.total_votes
    redirect '/'
    end
  end

end
