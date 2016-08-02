class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :level, :user_id, :favorites, :schedules, :recipes

  def favorites
    object.favorites.pluck(:id)
  end

  def schedules
    object.schedules.pluck(:id)
  end

  def recipes
    object.recipes.pluck(:id)
  end

end
