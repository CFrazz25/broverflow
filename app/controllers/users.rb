get "/users/new" do
  if request.xhr?
    erb :'Users/new', layout: false
  else
    erb :'Users/new'
  end
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
