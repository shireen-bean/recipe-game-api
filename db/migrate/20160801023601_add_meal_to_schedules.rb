class AddMealToSchedules < ActiveRecord::Migration
  def change
    add_reference :schedules, :recipe, index: true, foreign_key: true
  end
end
