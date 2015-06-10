class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :user_id
      t.decimal :total, :decimal, precision: 8, scale: 2
      t.decimal :tax, :decimal, precision: 8, scale: 2
      t.decimal :sub_total, :decimal, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
