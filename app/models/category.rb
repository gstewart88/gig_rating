class Category < ActiveRecord::Base
  has_many  :shows
  belongs_to  :genre
end
