class RemoveNamesFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :f_name, :l_name
  end
  
end
