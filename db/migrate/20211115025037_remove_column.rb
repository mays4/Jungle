class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :sales, :add_starts_on_to_sales
    remove_column :sales, :add_ends_on_to_sales
  end
end
