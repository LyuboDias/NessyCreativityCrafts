class RemoveAddressFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users,  :address
    remove_column :users,  :postcode
    remove_column :users,  :phone
    remove_column :users,  :l_name
  end
end
