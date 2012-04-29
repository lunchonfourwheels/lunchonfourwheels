class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :longitude
      t.string :latitude
      t.string :landmark
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
