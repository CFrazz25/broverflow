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
  @question = Question.new(title: params[:title], body: params[:body], user_id: current_user.id)
  if @question.save
    erb :'questions/show'
  else
    @errors = @question.errors.full_messages
  end
end

get '/questions/:id/edit' do
  @question = Question.find_by(id: params[:id])
  erb :'Questions/edit'
end

put '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @question.assign_attributes(params[:question])
  if @question.save
    redirect "/questions/#{@question.id}"
  else
    @errors = @question.errors.full_messages
    erb :'Questions/edit'
  end
end

delete '/questions/:id' do
  Question.find_by(id: params[:id]).destroy
  redirect '/'
end



