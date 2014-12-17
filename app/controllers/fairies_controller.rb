class FairiesController < ApplicationController

    def index
        @fairies = Fairy.all
    end

    def new
        @fairy = Fairy.new
    end

	def create
	    @fairy = Fairy.new(fairy_params)
	    if @fairy.save
	    	if current_user != nil
		        @user = User.find(current_user)
				@user.fairy << @fairy
				redirect_to user_path
			else
				flash.notice = 'Please log in before choosing fairy guides'
				redirect_to root_path
			end
	    else
	        render "new"
	    end
	end

    private
    def fairy_params
        params.require(:fairy).permit(:realm)
    end

end