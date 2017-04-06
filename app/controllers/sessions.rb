get "/sessions/new" do
  erb :'sessions/login'
end

post "/sessions" do
  user = User.authenticate(params[:username], params[:password])
  if user
    session[:id] = user.id
    redirect '/'
  else
    @errors = ["Invalid username or password, my broman.  Shotgun a beer and try again lol."]
    erb :"sessions/login"
  end
end
