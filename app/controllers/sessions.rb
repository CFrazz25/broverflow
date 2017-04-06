get "/sessions/new" do
  erb :'sessions/new'
end

post "/sessions" do
  user = User.authenticate(params[:email], params[:password])
  if user
    set_user(user)
    redirect '/'
  else
    @errors = ["Invalid username or password, my broman.  Shotgun a beer and try again lol."]
    erb :"sessions/new"
  end
end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end
