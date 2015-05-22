class CreateItemDetails < ActiveRecord::Migration
  def change
    create_table :item_details do |t|
      t.string :shop_code
      t.string :item_code
      t.string :sku_code
      t.integer :price

      t.timestamps null: false
    end
  end
end
