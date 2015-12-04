class RemoveCategoryFromShow < ActiveRecord::Migration
  def change
    remove_column :shows, :category, :string
    remove_column :shows, :genre, :string
  end
end
