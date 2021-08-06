class RemoveImagesFromOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :images
  end
end
