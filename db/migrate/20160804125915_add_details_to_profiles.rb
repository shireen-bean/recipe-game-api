class AddDetailsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :picture, :string
    add_column :profiles, :surname, :string
  end
end
