class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carts

  validates :first_name, {presence: true}
  validates :role, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates_format_of :email, with:/\A\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+\z/
  validates :password, {presence: true, length: {minimum: 6}}
end