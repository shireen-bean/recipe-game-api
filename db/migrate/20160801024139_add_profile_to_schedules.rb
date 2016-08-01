class AddProfileToSchedules < ActiveRecord::Migration
  def change
    add_reference :schedules, :profile, index: true, foreign_key: true
  end
end
