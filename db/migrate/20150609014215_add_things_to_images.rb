class AddThingsToImages < ActiveRecord::Migration
  def change
    add_column :images, :record_id, :string
  end
end
