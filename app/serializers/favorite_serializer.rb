class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :recipe_id
end
