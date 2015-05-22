class CreateItemHeaders < ActiveRecord::Migration
  def change
    create_table :item_headers do |t|
      t.string :shop_code
      t.string :item_code
      t.string :item_name

      t.timestamps null: false
    end
  end
end
