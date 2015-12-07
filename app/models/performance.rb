class Performance < ActiveRecord::Base
  belongs_to  :show
  belongs_to  :venue


  def human_readable_date
    date.strftime("%A, %d %b %Y %I:%M %p")
  end
end
