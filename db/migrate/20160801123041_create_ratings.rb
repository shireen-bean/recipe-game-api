class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :recipe, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
