class AddGenreIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :genre_id, :integer
  end
end
