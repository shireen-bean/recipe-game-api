class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score, :recipe_id, :profile_id
end
