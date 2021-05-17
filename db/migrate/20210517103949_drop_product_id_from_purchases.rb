class DropProductIdFromPurchases < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :product_id
  end
end
