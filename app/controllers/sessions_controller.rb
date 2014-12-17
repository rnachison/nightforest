class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.where(email: params[:email]).first
        # make sure there's a current user and they authenticate
        if user && user.authenticate(params[:password])
            # sets the cookie to the browser
            session[:user_id] = user.id
            redirect_to root_url
        else
            flash.now.alert = "Email or password is invalid"
            render "new"
        end
    end

    def destroy
        # Kill cookies
        reset_session
        redirect_to root_path
    end

end
