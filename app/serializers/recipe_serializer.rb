class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :directions, :time, :image, :ingredients, :level, :tags, :ratings
end
