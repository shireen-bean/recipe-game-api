class CompletionSerializer < ActiveModel::Serializer
  attributes :id, :image, :profile_id, :recipe_id
  # has_one :profile
  # has_one :recipe
end
