class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :website
      t.string :schedule_site
      t.string :twitter
      t.string :facebook
      t.integer :schedule_id

      t.timestamps
    end
  end
end
