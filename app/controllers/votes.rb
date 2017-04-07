post '/questions/:question_id/vote' do
  question = Question.find_by(id: params[:question_id])
  uservote = question.votes.find_by(user_id: session[:user_id])
  @questions = Question.all.sort_by {|question| question.total_votes}.reverse

  if params[:upvote]
    if uservote && uservote.value == 1
      @error = "braaaah!  Can't upvote twice on this, it's against bro code"
      question.total_votes
      erb :index
    elsif uservote && uservote.value == -1
      uservote.update_attributes(value: 1)
      question.total_votes
      redirect '/questions'
    else
      vote = question.votes.create(user_id: session[:user_id], value: 1)
      question.total_votes
      redirect '/questions'
    end

  elsif params[:downvote]
    if uservote && uservote.value == -1
      @error = "braaaah!  Can't downvote twice on this, it's against bro code"
      question.total_votes
      erb :index
    elsif uservote && uservote.value == 1
      uservote.update_attributes(value: -1)
      question.total_votes
      redirect '/questions'
    else
    vote = question.votes.create(user_id: session[:user_id], value: -1)
    question.total_votes
    redirect '/questions'
    end
  end
end

post '/answers/:answer_id/vote' do
  answer = Answer.find_by(id: params[:answer_id])
  uservote = answer.votes.find_by(user_id: session[:user_id])
  @question = Question.find_by(id: answer.question_id)
  @sorted_answers = @question.answers.sort_by {|answer| answer.total_votes}.reverse

  if params[:upvote]
    if uservote && uservote.value == 1
      @error = "braaaah!  Can't upvote twice on this, it's against bro code"
      answer.total_votes
      erb :"questions/show"
    elsif uservote && uservote.value == -1
      uservote.update_attributes(value: 1)
      answer.total_votes
      redirect "/questions/#{answer.question_id}"
    else
      vote = answer.votes.create(user_id: session[:user_id], value: 1)
      answer.total_votes
      redirect "/questions/#{answer.question_id}"
    end

  elsif params[:downvote]
    if uservote && uservote.value == -1
      @error = "braaaah!  Can't downvote twice on this, it's against bro code"
      answer.total_votes
      erb :"questions/show"
    elsif uservote && uservote.value == 1
      uservote.update_attributes(value: -1)
      answer.total_votes
     redirect "/questions/#{answer.question_id}"
    else
    vote = answer.votes.create(user_id: session[:user_id], value: -1)
    answer.total_votes
    redirect "/questions/#{answer.question_id}"
    end
  end
end
