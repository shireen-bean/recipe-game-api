class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :eat_on, :recipe, :profile, :favorite, :complete, :rating

  def recipe
    object.recipe.id
  end

  def profile
    object.profile.id
  end
end
