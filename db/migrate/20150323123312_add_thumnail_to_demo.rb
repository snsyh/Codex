class AddThumnailToDemo < ActiveRecord::Migration
  def change
    add_column :demos, :thumnail, :string
  end
end
