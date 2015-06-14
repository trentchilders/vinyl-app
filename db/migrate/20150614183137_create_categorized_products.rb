class CreateCategorizedProducts < ActiveRecord::Migration
  def change
    create_table :categorized_products do |t|
      t.integer :record_id
      t.integer :category_id

      t.timestamps 
    end
  end
end
