class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :image
      t.string :title
      t.string :artist
      t.decimal :price, precision: 7, scale: 2
      t.string :description

      t.timestamps null: false
    end
  end
end
