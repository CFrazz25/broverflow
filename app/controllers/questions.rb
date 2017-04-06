get '/questions' do
  erb :index
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])

  erb :'/questions/show'
end

get '/questions/:id/vote' do
end
