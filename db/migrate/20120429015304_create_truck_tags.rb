class CreateTruckTags < ActiveRecord::Migration
  def change
    create_table :truck_tags do |t|
      t.integer :truck_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
