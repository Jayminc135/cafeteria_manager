class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.bigint :menu_category_id
      t.string :name
      t.string :description
      t.string :price
      t.timestamps
    end
  end
end
