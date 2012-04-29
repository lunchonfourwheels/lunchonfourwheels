class CreateWindows < ActiveRecord::Migration
  def change
    create_table :windows do |t|
      t.string :day_of_week
      t.string :time_block
      t.date :date

      t.timestamps
    end
  end
end
