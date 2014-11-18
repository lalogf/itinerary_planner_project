class WaypointsController < ApplicationController
	before_filter :assign_it, only:[:new,:edit] 
	before_filter :assign_wp, only:[:show,:edit, :update, :destroy] 

	def show
		
	end
	def new
		@waypoint = Waypoint.new
		
	end
	def edit
		
	end
	def update
		@waypoint.update(wp_params)

		redirect_to '/'
	end
	def destroy
		
	end
	def create
		Waypoint.create(wp_params.merge(itinerary_id: params[:itinerary_id]))

		redirect_to '/'
		
	end
	private
	def wp_params
		params.require(:waypoint).permit(:location, :name, :traveldate)
		
	end
	def assign_wp

		@waypoint = Waypoint.find(params[:id])
		
	end
	def assign_it
		@it = Itinerary.find(params[:itinerary_id])
	end
	def findtraveler
		@traveler = Traveler.all
		
	end
end
