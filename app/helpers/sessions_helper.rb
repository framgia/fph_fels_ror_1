module SessionsHelper
# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in_user
    @logged_in_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !logged_in_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @logged_in_user = nil
  end
end
