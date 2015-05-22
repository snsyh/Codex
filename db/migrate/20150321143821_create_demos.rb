class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.string :title
      t.integer :price

      t.timestamps null: false
    end
  end
end
