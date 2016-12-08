class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by_email(params[:email])
        # should this be an instance  variable or a local variable
        if @user && @user.authenticate
    end

    def destroy
    end

    
end
