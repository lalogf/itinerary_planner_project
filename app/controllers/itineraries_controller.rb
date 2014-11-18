class ItinerariesController < ApplicationController

	before_filter :assign_it, only:[:show,:edit, :update, :destroy] 

	def index

		@itinerary= Itinerary.all
		@friends = Traveler.all

	end

	def create

		Itinerary.create(itinerary_params)
		redirect_to '/'

	end

	def new
		@itinerary = Itinerary.new
	end

	def edit
	end

	def update
		@itinerary.update(itinerary_params)

		redirect_to '/'
	end
	def show 

		
	end

	

	def destroy
		@itinerary.destroy

		redirect_to '/'

	end

	private
	def itinerary_params
		params.require(:itinerary).permit(:name, :origin, :destination, :departure, :return_on)
	end
	def assign_it
		@itinerary = Itinerary.find(params[:id])

	end



end
