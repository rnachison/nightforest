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
				redirect_to user_path(@user)
			else
				flash.notice = 'Please log in before choosing fairy guides'
				redirect_to root_path
			end
	    else
	        render "new"
	    end
	end

	def edit
		@fairy = Fairy.find(params[:id])
	end

	def update
		@fairy = Fairy.find(params[:id])
		if current_user != nil
		    @user = User.find(current_user)
			if @fairy.update_attributes(fairy_params)
				redirect_to user_path(@user)
			else
				render 'edit'
			end
		else
			flash.notice = 'Please log in before choosing fairy guides'
			redirect_to root_path
		end

	end

    private
    def fairy_params
        params.require(:fairy).permit(:realm, :portal, :hiding_place)
    end

end