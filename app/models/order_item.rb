class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  monetize :price_cents
  has_one_attached :user_pic
end
