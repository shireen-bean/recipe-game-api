class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score, :recipe_id, :profile_id
  # has_one :recipe
  # has_one :profile
end
