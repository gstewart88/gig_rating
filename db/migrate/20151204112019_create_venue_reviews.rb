class CreateVenueReviews < ActiveRecord::Migration
  def change
    create_table :venue_reviews do |t|
      t.string    :title
      t.integer   :venue_id
      t.string    :author
      t.text      :description
      t.integer   :rating



      t.timestamps null: false
    end
  end
end
