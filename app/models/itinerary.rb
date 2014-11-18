class Itinerary < ActiveRecord::Base
	has_many :waypoints
	has_many :travelers, through: :waypoints

end
