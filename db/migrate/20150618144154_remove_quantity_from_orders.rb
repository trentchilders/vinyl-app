class RemoveQuantityFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :record_id, :integer
    remove_column :orders, :decimal, :decimal
  end
end
