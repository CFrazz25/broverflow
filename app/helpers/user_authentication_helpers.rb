helpers do

  def logged_in?
    current_user != nil
  end

  def current_user
     @current ||= User.find_by(id: session[:user_id])
  end

  def set_user(user)
    session[:user_id] = user.id
  end

  def author?(user_id)
    session[:user_id] == user_id
  end

end
