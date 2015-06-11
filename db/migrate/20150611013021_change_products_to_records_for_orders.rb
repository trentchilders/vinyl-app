class ChangeProductsToRecordsForOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :product_id, :record_id
  end
end
