class RemoveColumnFromDemo < ActiveRecord::Migration
  def change
    remove_column :demos, :prefecture_code, :string
  end
end
