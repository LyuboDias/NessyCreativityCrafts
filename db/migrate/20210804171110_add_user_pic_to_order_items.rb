class AddUserPicToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :user_pic, :string
  end
end
 