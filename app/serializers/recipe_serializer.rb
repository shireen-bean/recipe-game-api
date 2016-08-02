class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :directions, :time, :image, :ingredients, :level, :tags, :ratings, :favorites, :profiles

def favorites
  object.favorites.pluck(:id)
end

def schedules
  object.schedules.pluck(:id)
end

def profiles
  object.profiles.pluck(:id)
end


end
