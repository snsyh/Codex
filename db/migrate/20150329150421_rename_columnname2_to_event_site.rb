class RenameColumnname2ToEventSite < ActiveRecord::Migration
 def up
    rename_column :event_sites, :event_site_name, :name
  end

  def down
    rename_column :event_sites, :name, :event_site_name
    #   呪文     :テーブル名, :新カラム名, :旧カラム名
  end
end
