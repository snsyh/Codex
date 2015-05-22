class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :organization_code
      t.string :organization_name
      t.string :delegate
      t.string :prefecture_type_id
      t.string :tel
      t.string :email

      t.timestamps null: false
    end
  end
end
