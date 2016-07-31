class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :directions, :time
end
