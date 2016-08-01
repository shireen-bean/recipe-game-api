class AddTitleToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :title, :string
  end
end
