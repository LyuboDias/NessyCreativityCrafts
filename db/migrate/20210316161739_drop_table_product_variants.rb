class DropTableProductVariants < ActiveRecord::Migration[6.0]
  def change
    drop_table :product_variants
  end
end
