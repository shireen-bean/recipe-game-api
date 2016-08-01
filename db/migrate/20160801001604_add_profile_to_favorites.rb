class AddProfileToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :profile, index: true, foreign_key: true
  end
end
