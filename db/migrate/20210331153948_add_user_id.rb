class AddUserId < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_details, :user, index: true
  end
end
