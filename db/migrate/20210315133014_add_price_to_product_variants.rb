class AddPriceToProductVariants < ActiveRecord::Migration[6.0]
  def change
    add_monetize :product_variants, :price, currency: { present: false }
  end
end
