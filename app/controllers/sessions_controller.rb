class SessionsController < ApplicationController

  def new
    # why is this empty?
  end

  def create
    @user = User.find_by_email(params[:email])
    # should this be an instance variable or a local variable
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # flash.now[:notice] = "Logged in!"
      redirect_to root_url, notice: "Good vibes..."
    else
      # render :new, alert: "Bad login"
      flash.now[:alert] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Peace out!"
  end

end
