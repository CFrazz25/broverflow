get '/questions' do
  @questions = Question.all.sort_by {|question| question.total_votes}.reverse
  erb :index
end

get '/questions/new' do
  erb :'questions/new'
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @sorted_answers = @question.answers.sort_by {|answer| answer.total_votes}.reverse
  # @answers = Answer.where(question_id: @question.id)
  erb :'/questions/show'
end

post '/questions' do
  @question = Question.create(title: params[:title], body: params[:body], user_id: current_user.id)
  erb :'questions/show'
end


