class Product < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  has_one_attached :photo
  monetize :price_cents 
end 
  