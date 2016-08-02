class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :directions, :time, :image, :ingredients, :level, :tags, :ratings, :profiles


def schedules
  object.schedules.pluck(:id)
end

def profiles
  object.profiles.pluck(:id)
end


end
