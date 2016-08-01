class Rating < ActiveRecord::Base
  belongs_to :recipe, foreign_key: :recipe_id, inverse_of: :ratings
  # belongs_to :profile, foreign_key: :profile_id, inverse_of :ratings
end
