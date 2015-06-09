class RemoveImageFromRecords < ActiveRecord::Migration
  def change
    remove_column :records, :image, :string
  end
end
