class AddGenreIdToShow < ActiveRecord::Migration
  def change
    add_column  :shows, :genre_id, :integer
  end
end
