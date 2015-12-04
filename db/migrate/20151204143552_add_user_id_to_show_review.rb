class AddUserIdToShowReview < ActiveRecord::Migration
  def change
    add_column  :show_reviews, :user_id, :integer
  end
end
