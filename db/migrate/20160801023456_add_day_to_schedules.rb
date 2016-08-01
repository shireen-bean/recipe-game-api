class AddDayToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :eat_on, :date
  end
end
