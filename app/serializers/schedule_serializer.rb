class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :eat_on, :profile_id, :recipe_id, :recipe, :profile

  def recipe
    object.recipe.id
  end

  def profile
    object.profile.id
  end
end
