class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_logged_in
    redirect_to root_url, alert: "Please log in" unless current_user
  end

  private

  def current_user
    @current_user ||= User.find(session[:grower_id]) if session[:grower_id]
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # @current_user ||= User.find_by_id(session[:user_id])
    # if session[:user_id] do
    #   @current_user = @current_user || User.find(session[:user_id])
    # end
  end

  helper_method :current_user

end
