class CreateShowReviews < ActiveRecord::Migration
  def change
    create_table :show_reviews do |t|
      t.string    :title
      t.integer   :show_id
      t.string    :author
      t.text      :description
      t.integer   :rating


      t.timestamps null: false
    end
  end
end
