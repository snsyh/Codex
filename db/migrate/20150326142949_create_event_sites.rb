class CreateEventSites < ActiveRecord::Migration
  def change
    create_table :event_sites do |t|
      t.string :event_site_code
      t.string :prefecture_type_id
      t.string :event_site_name
      t.string :near_station
      t.string :access_route
      t.string :host_comment
      t.string :carpark_type_id
      t.integer :capacity
      t.string :degrees_of_latitude
      t.string :degrees_of_longitude
      t.string :privately_owned_type_id

      t.timestamps null: false
    end
  end
end
