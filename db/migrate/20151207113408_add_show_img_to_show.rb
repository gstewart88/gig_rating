class AddShowImgToShow < ActiveRecord::Migration
  def change
    add_column :shows, :show_img, :string
  end
end
