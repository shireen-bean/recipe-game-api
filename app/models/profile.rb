class Profile < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_many :favorites
  has_many :recipes, through: :favorites

  has_many :schedules
  has_many :recipes, through: :schedules

end
