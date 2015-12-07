class AddAccessibilityToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :accessibility, :integer
  end
end
