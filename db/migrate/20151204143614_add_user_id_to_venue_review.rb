class AddUserIdToVenueReview < ActiveRecord::Migration
  def change
    add_column  :venue_reviews, :user_id, :integer
  end
end
