class CreateTravelersWaypoints < ActiveRecord::Migration
  def change
    create_table :travelers_waypoints do |t|
      t.references :traveler, index: true
      t.references :waypoint, index: true
    end
  end
end
