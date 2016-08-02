class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :eat_on, :recipe, :profile, :favorite, :complete, :rating

  def recipe
    object.recipe_id
  end

  def profile
    object.profile_id
  end
end
