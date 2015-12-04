class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :venue_id
      t.integer :show_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
