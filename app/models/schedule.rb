class Schedule < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :schedules
  belongs_to :recipe, foreign_key: :recipe_id, inverse_of: :schedules

  validates :profile_id, uniqueness: { scope: :recipe_id }
  validates :recipe_id, uniqueness: { scope: :profile_id }
end
