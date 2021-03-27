class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.text :address, null: false
      t.string :postcode, null: false
      t.integer :phone

      t.timestamps
    end 
  end
end
