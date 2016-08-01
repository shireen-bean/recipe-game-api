class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :directions, :time, :image 
end
