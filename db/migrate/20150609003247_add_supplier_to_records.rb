class AddSupplierToRecords < ActiveRecord::Migration
  def change
    add_column :records, :supplier_id, :integer
  end
end
