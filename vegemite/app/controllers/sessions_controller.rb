class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by_email(params[:email])
        # should this be an instance variable or a local variable
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to root_url, notice: "Logged in!"
        else
          # render :new, alert: "Bad login"
          flash.now[:alert] = "Invalid email or password"
          render "new"
        end
    end

    def destroy
      session[:user_id] = nil
      redirect_to gardens_url, notice: "Logged out!"
    end

end
