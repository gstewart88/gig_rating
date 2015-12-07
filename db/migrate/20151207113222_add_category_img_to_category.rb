class AddCategoryImgToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :category_img, :string
  end
end
