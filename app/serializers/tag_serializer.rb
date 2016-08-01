class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag, :recipe_id
end
