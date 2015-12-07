class AddLightingToVenueReview < ActiveRecord::Migration
  def change
    add_column :venue_reviews, :lighting, :integer
  end
end
