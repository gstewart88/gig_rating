class VenueReview < ActiveRecord::Base
  belongs_to  :venue
  belongs_to :user
  
  after_create :update_user_ranking




  def average_rating
    ((accessibility.to_f+acoustics.to_f+cleanliness.to_f+lighting.to_f+location.to_f+parking.to_f+seating.to_f)/7).round(0)
  end

  private
  def update_user_ranking
    user.ranking += 1
    user.save
  end

end