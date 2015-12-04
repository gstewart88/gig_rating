class Show < ActiveRecord::Base
  has_many :show_reviews
  has_many  :venues, :through => :performances
  belongs_to  :genres
  belongs_to  :categories
end
