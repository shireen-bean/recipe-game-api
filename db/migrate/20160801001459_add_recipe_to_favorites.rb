class AddRecipeToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :recipe, index: true, foreign_key: true
  end
end
