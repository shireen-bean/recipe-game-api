class RatingSerializer < ActiveModel::Serializer
  attributes :id, :score
  has_one :recipe
  has_one :profile
end
