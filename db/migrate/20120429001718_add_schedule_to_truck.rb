class AddScheduleToTruck < ActiveRecord::Migration
  def change
    add_column :trucks, :schedule_id, :integer

  end
end
