class Venue < ActiveRecord::Base
  has_many :venue_reviews
  has_many  :shows, :through => :performances
end
