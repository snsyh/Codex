class RenameOrgaToOrganization < ActiveRecord::Migration
 def up
    rename_column :organizations, :organization_name, :name
  end

  def down
    rename_column :organizations, :name, :organization_name
    #   呪文     :テーブル名, :新カラム名, :旧カラム名
  end
end
