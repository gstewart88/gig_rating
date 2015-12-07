class AddVenueImgToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :venue_img, :string
  end
end
