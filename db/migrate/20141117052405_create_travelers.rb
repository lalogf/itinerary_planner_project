class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.references :waypoint

      t.timestamps
    end
  end
end
