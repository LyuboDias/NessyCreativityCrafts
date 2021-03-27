class AddNamesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
    add_column :users, :address, :text
    add_column :users, :postcode, :string
    add_column :users, :phone, :integer, :limit => 8
  end
end
