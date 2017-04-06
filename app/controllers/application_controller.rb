class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def index
    render "layouts/application"
  end
  
  def authenticate
    redirect_to login_path unless logged_in?
  end
end
