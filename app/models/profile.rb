class Profile < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_many :schedules, inverse_of: :profile
  has_many :favorites
  has_many :recipes, through: :favorites
  # has_many :recipes
end
