class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :name
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
  end
end
