class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :location_id
      t.integer :window_id

      t.timestamps
    end
  end
end
