class Addcolumnstoorders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :rating, :integer
    add_column :orders, :experience, :string
  end
end
