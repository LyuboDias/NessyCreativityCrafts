class AddImagesToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :images, :string
  end
end
