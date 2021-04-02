class AddAddressDetailsToUserDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :user_details, :city, :string
    add_column :user_details, :street, :string
    add_column :user_details, :door_number, :string
  end
end
