class ProductVariant < ApplicationRecord
  belongs_to :product
  monetize :price_cents
end
