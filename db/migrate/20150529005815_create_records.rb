class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :image
      t.string :title
      t.string :artist
      t.string :price
      t.string :description

      t.timestamps null: false
    end
  end
end
