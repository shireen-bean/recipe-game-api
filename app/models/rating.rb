class Rating < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :profile
end
