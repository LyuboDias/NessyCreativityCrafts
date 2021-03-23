class Product < ApplicationRecord
  validates :title, presence: true
  # has_many :product_categories
  # has_many :categories
  belongs_to :category
  has_many :categories
  # has_many :variants, class_name: 'ProductVariant'
  has_one_attached :image
  monetize :price_cents
end 
  