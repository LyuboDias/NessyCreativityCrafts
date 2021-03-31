class AddUserDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_details, :users, null: false, foreign_key: true
  end
end
