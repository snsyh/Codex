class AddOrganizationidToEventSite < ActiveRecord::Migration
  def change
    add_column :event_sites, :organization_id, :string
  end
end
