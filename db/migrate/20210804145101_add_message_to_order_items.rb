class AddMessageToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :message, :string
  end
end
