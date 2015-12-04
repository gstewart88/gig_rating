class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.datetime :date
      t.string :genre
      t.string  :category
      

      t.timestamps null: false
    end
  end
end
