class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.string :origin
      t.string :destination
      t.date :departure
      t.date :return_on

      t.timestamps
    end
  end
end
