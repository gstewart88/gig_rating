class RemoveGenreIdFromShow < ActiveRecord::Migration
  def change
    remove_column :shows, :genre_id, :integer
  end
end
