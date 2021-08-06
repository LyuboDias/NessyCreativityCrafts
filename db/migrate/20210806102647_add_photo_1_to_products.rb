class AddPhoto1ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :photo_1, :string
    add_column :products, :photo_2, :string
    add_column :products, :photo_3, :string
    add_column :products, :photo_4, :string
  end
end
