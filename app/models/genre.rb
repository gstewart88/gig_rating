class Genre < ActiveRecord::Base
  has_many  :categories
end
