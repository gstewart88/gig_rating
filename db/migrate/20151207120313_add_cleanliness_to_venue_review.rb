class AddCleanlinessToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :cleanliness, :integer
  end
end
