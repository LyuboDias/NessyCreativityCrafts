class AddPhoneToUserDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :user_details, :phone, :string
  end
end
