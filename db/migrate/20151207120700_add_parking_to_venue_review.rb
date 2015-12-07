class AddParkingToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :parking, :integer
  end
end
