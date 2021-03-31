class RemoveUsersIdFrom < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_details, :user_id
  end
end
