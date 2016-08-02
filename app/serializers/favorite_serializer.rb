class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :recipe_id, :recipe, :profile

  def recipe
    object.recipe.id
  end

  def profile
    object.profile.id
  end
end
