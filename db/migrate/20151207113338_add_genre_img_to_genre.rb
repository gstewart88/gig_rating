class AddGenreImgToGenre < ActiveRecord::Migration
  def change
    add_column :genres, :genre_img, :string
  end
end
