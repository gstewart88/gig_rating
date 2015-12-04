class AddLiveMusicToGenre < ActiveRecord::Migration
  def change
    add_column :genres, :live_music, :boolean
  end
end
