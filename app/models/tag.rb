class Tag < ActiveRecord::Base
  belongs_to :recipe, foreign_key: :recipe_id, inverse_of: :tags, dependent: :destroy
end
