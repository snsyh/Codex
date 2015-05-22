class RenameColumnnameToEvent < ActiveRecord::Migration
 def up
    rename_column :events, :event_name, :name
  end

  def down
    rename_column :events, :name, :event_name
    #   呪文     :テーブル名, :新カラム名, :旧カラム名
  end
end
