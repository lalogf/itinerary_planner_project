class Waypoint < ActiveRecord::Base
	belongs_to :itinerary
	has_and_belongs_to_many :travelers
end
