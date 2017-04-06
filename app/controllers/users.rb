get "/users/new" do
  erb :'Users/new'
end

post "/users" do
  user = User.new(params[:user])
  if user.save
    set_user(user)
    redirect "/"
  else
    @errors = user.errors.full_messages
    erb :"users/new"
  end
end
