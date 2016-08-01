class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.string :image

      t.timestamps null: false
    end
  end
end
