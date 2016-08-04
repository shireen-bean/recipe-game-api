class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :level, :user_id, :schedules, :recipes, :points, :surname, :picture

  def schedules
    object.schedules.pluck(:id)
  end

  def recipes
    object.recipes.pluck(:id)
  end

end
