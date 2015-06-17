class ChangeProductidColumnforCreateCartedProducts < ActiveRecord::Migration
  def change
    remove_column :carted_products, :product_id, :integer
    add_column :carted_products, :record_id, :integer
  end
end
