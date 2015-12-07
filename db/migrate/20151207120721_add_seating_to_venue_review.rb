class AddSeatingToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :seating, :integer
  end
end
