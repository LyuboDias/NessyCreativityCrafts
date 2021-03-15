class RemovePriceFromProductVariants < ActiveRecord::Migration[6.0]
  def change
    remove_column :product_variants, :price
  end
end
