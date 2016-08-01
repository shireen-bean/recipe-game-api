class AddPropertiesToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :recipe, index: true, foreign_key: true
    add_column :tags, :tag, :string
  end
end
