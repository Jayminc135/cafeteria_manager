class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user

  validates :user_id, {presence: true}
  validates :status, {presence: true}
  validates :date, {presence: true}
end