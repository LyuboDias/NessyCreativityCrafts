class RemoveUsersId < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_details, :users_id
  end 
end
