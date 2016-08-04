class AddPointsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :points, :integer
  end
end
