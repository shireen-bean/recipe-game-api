class Recipe < ActiveRecord::Base
  has_many :tags, inverse_of: :recipe
  has_many :ratings, inverse_of: :recipe
end
