class Recipe < ActiveRecord::Base
  has_many :tags, inverse_of: :recipe
  has_many :ratings, inverse_of: :recipe
  has_many :profiles, through: :favorites
  has_many :favorites
end
