class AddChefToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :chef, :boolean
  end
end
