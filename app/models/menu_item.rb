class MenuItem < ApplicationRecord
  belongs_to :menu_category

  validates :menu_category_id, {presence: true }
  validates :name, {presence: true }
  validates :price, {presence: true }
end