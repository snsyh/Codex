class AddPrefectureTypeToDemo < ActiveRecord::Migration
  def change
    add_column :demos, :prefecture_type_id, :string
  end
end
