class AddLocationToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :location, :integer
  end
end
