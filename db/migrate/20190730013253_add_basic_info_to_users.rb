class AddBasicInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :country, :string
    add_column :users, :date_of_birth, :date
  end
end
