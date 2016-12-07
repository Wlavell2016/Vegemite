class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_logged_in
    redirect_to root_url, alert: "Sorry, I can't let you do that." unless current_user
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # clarify whats goin on
    # if session[:user_id] do
    #   @current_user = User.find(session[:user_id])
    # end
  end

  helper_method :current_user

end
