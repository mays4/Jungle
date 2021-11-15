class RemoveColumnAddEndsOnToSales < ActiveRecord::Migration
  def change
    
    remove_column :sales, :add_ends_on_to_sales
  end
end
