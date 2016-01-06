class ShowReview < ActiveRecord::Base
  belongs_to  :show
  belongs_to :user

  after_create :update_user_ranking

  private
  def update_user_ranking
    user.ranking += 1
    user.save
  end
end
