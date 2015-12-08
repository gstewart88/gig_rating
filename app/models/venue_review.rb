class VenueReview < ActiveRecord::Base
  belongs_to  :venue
  belongs_to :user
  

def average_rating
  ((accessibility.to_f+acoustics.to_f+cleanliness.to_f+lighting.to_f+location.to_f+parking.to_f+seating.to_f)/7).round(1)
end

end