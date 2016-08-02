class AddCharacteristicsToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :favorite, :boolean
    add_column :schedules, :complete, :boolean
    add_column :schedules, :rating, :integer
  end
end
