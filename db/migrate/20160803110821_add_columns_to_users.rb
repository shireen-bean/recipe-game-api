class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :givenname, :string
    add_column :users, :lastname, :string
    add_column :users, :profile, :integer
  end
end
