class Cart < ApplicationRecord
  belongs_to :user

  validates :user_id, {presence: true}
  validates :menu_category_id, {presence: true}
  validates :menu_item_id, {presence: true}
  validates :menu_item_name, {presence: true}
  validates :menu_item_price, {presence: true}
  validates :quantity, {presence: true}
end