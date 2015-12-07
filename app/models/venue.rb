class Venue < ActiveRecord::Base
  has_many :venue_reviews
  has_many  :shows, :through => :performances


  mount_uploader :venue_img, ShowImgUploader

end
