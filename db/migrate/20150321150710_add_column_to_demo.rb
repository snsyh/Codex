class AddColumnToDemo < ActiveRecord::Migration
  def change
    add_column :demos, :prefecture_code, :string
  end
end
