class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :given_name
      t.integer :level

      t.timestamps null: false
    end
  end
end
