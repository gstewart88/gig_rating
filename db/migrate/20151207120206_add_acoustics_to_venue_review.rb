class AddAcousticsToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :acoustics, :integer
  end
end
