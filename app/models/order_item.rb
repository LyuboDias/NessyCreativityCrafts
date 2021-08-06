class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  monetize :price_cents
  has_one_attached :user_pic 
  # TODO add this method to user_pic
  # do |attachable|
  #   attachable.variant :thumb, resize: "100x100"
  # end
end
