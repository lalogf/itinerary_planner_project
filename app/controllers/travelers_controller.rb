class TravelersController < ApplicationController

	before_filter :assign_traveler, only:[:show,:edit, :update, :destroy] 

	def new
		@traveler = Traveler.new	
	end

	def create
		Traveler.create(traveler_params)
		redirect_to '/'
	end
	def edit
	end

	def update
		@traveler.update(traveler_params)

		redirect_to '/'
	end
	def destroy

		@traveler.destroy

		redirect_to '/'
		
	end
	def show

		@traveler
		
	end


	private
	def traveler_params
		params.require(:traveler).permit(:firstname, :lastname, :email)
	end
	def assign_traveler
		@traveler = Traveler.find(params[:id])
		
	end
	def method_name
		
	end
end
