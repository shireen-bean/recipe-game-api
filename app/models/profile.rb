class Profile < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_many :favorites, inverse_of: :profile
  has_many :schedules, inverse_of: :profile
end
