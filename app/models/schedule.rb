class Schedule < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :schedules, dependent: :destroy
  belongs_to :recipe, foreign_key: :recipe_id, inverse_of: :schedules, dependent: :destroy
  
end
