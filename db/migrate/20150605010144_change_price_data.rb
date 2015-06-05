class ChangePriceData < ActiveRecord::Migration
  def change
    change_column :records, :price, :decimal, precision: 7, scale: 2
  end
end
