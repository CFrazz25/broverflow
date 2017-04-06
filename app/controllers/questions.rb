get '/questions' do
  erb :index
end

get '/questions/new' do
  erb :'questions/new'
end

get '/questions/:id' do
end

get '/questions/:id/vote' do
end

post '/questions' do
  @question = Question.create(title: params[:title], body: params[:body], user_id: current_user.id)
  erb :'questions/show'
end
