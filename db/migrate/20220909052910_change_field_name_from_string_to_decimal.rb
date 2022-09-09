class ChangeFieldNameFromStringToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :menu_items, :price, :Decimal
  end
end
