class UsersController < ApplicationController
    def index
        @users = User.new
    end

    def new
        @user = User.new
    end

	def create
	    @user = User.new(user_params)
	    if @user.save
	        session[:user_id] = @user.id
	        redirect_to root_url
	    else
	        render "new"
	    end
	end

    def show

        if current_user != nil
            @user = User.find(params[:id])

            if Fairy.exists?(:id => current_user.id)
                @fairy = Fairy.find(params[:id])
            else 
                @fairy = Fairy.new
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :username)
    end
end