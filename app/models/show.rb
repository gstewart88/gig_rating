class Show < ActiveRecord::Base
  has_many :show_reviews
  has_many  :venues, :through => :performances
  
  belongs_to  :category

  mount_uploader :show_img, ShowImgUploader
end
