class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :food_type

      t.timestamps
    end
  end
end
