class AddGenreIdToCategory < ActiveRecord::Migration
  def change
    add_column :category, :genre_id, :integer
  end
end
